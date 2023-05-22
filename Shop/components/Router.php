<?php
class Router
{
    private $routes;

    public function __construct()
    {
        $pathRoutes = ROOT . '/config/routes.php';

        $this->routes = include($pathRoutes);
    }

    private function getURL()
    {
        if (!empty($_SERVER['REQUEST_URI'])) {
            return trim($_SERVER['REQUEST_URI'], '/');
        }
    }

    public function run()
    {
        $uri = $this->getURL();

        foreach ($this->routes as $urlPattern => $path) {
            if (preg_match("~$urlPattern~", $uri)) {
                $intRoute = preg_replace("~$urlPattern~", $path, $uri);

                $seg = explode('/', $intRoute);

                $contrName = array_shift($seg) . 'Controller';
                $contrName = ucfirst($contrName);

                $actionName = 'action' . ucfirst(array_shift($seg));

                $param = $seg;

                $contrFile = ROOT . '/controllers/' .
                        $contrName . '.php';

                if (file_exists($contrFile)) {
                    include_once($contrFile);
                }

                $contrObject = new $contrName;

                $result = call_user_func_array(array($contrObject, $actionName), $param);

                if ($result != null) {
                    break;
                }
            }
        }
    }

}

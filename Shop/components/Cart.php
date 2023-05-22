<?php
class Cart
{
    public static function addProduct($id)
    {
        //$id к integer
        $id = intval($id);

        $prodInCart = array();

        if (isset($_SESSION['products'])) {
            $prodInCart = $_SESSION['products'];
        }

        if (array_key_exists($id, $prodInCart)) {
            $prodInCart[$id] ++;
        } else {
            $prodInCart[$id] = 1;
        }

        // Записываем массив с товарами в сессию
        $_SESSION['products'] = $prodInCart;

        return self::countItems();
    }

    public static function countItems()
    {
        if (isset($_SESSION['products'])) {
            $count = 0;
            foreach ($_SESSION['products'] as $id => $quantity) {
                $count = $count + $quantity;
            }
            return $count;
        } else {
            return 0;
        }
    }

    public static function getProducts()
    {
        if (isset($_SESSION['products'])) {
            return $_SESSION['products'];
        }
        return false;
    }

    public static function getTotalPrice($prod)
    {
        $prodInCart = self::getProducts();

        $total = 0;
        if ($prodInCart) {
            foreach ($prod as $item) {
                $total += $item['price'] * $prodInCart[$item['id']];
            }
        }
        return $total;
    }

    public static function clear()
    {
        if (isset($_SESSION['products'])) {
            unset($_SESSION['products']);
        }
    }

    public static function deleteProduct($id)
    {
        $prodInCart = self::getProducts();

        unset($prodInCart[$id]);

        $_SESSION['products'] = $prodInCart;
    }

}

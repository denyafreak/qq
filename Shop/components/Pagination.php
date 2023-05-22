<?php
class Pagination
{
    private $max = 10;
    private $index = 'page';
    private $currPage;
    private $total;
    private $limit;

    public function __construct($total, $currentPage, $limit, $index)
    {
        $this->total = $total;
        $this->limit = $limit;
        $this->index = $index;
        $this->amount = $this->amount();
        $this->setCurrentPage($currentPage);
    }

    public function get()
    {
        $links = null;
        $limits = $this->limits();

        $html = '<ul class="pagination">';
        for ($page = $limits[0]; $page <= $limits[1]; $page++) {
            if ($page == $this->currPage) {
                $links .= '<li class="active"><a href="#">' . $page . '</a></li>';
            } else {
                $links .= $this->generateHtml($page);
            }
        }

        if (!is_null($links)) {
            if ($this->currPage > 1)
                $links = $this->generateHtml(1, '&lt;') . $links;

            if ($this->currPage < $this->amount)
                $links .= $this->generateHtml($this->amount, '&gt;');
        }

        $html .= $links . '</ul>';

        return $html;
    }

    private function generateHtml($page, $text = null)
    {
        if (!$text)
            $text = $page;

        $currentURL = rtrim($_SERVER['REQUEST_URI'], '/') . '/';
        $currentURL = preg_replace('~/page-[0-9]+~', '', $currentURL);
        return
                '<li><a href="' . $currentURL . $this->index . $page . '">' . $text . '</a></li>';
    }

    private function limits()
    {
        $left = $this->currPage - round($this->max / 2);
        $start = $left > 0 ? $left : 1;

        if ($start + $this->max <= $this->amount) {
            $end = $start > 1 ? $start + $this->max : $this->max;
        } else {
            $end = $this->amount;
            $start = $this->amount - $this->max > 0 ? $this->amount - $this->max : 1;
        }
        return
                array($start, $end);
    }
    private function setCurrentPage($currentPage)
    {
        $this->currPage = $currentPage;

        if ($this->currPage > 0) {
            if ($this->currPage > $this->amount)
                $this->currPage = $this->amount;
        } else
            $this->currPage = 1;
    }

    private function amount()
    {
        return ceil($this->total / $this->limit);
    }

}

<?php
class ProductController
{
    public function actionView($productId)
    {
        $categ = Category::getCategoriesList();
        $product = Product::getProductById($productId);

        require_once(ROOT . '/views/product/view.php');
        return true;
    }

}

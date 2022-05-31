<?php

function getCategory()
{
    $stmt = new PDO('mysql:host=localhost;dbname=exoajax', 'root', '');
    $data = $stmt->prepare('SELECT categ_id,category FROM categories;');
    $data->execute();
    return $data->fetchAll(PDO::FETCH_ASSOC);
}
function getData($cat)
{

    $stmt = new PDO('mysql:host=localhost;dbname=exoajax', 'root', '');
    $data = $stmt->prepare("SELECT title,category FROM movies JOIN categories where movies.fk_categ=categories.categ_id and categ_id=$cat;");
    $data->execute();
    return $data->fetchAll(PDO::FETCH_ASSOC);
}

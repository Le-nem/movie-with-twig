<?php
ini_set('error_reporting', E_ALL);

require 'modele/data.php';

$categ = getCategory();
$data = new ArrayObject();
foreach ($categ as $d => $v) {
    $data->append(getData($v['categ_id']));
}

$donnees = array(
    'categories' => $data,
    'titre_doc' => 'Liste des films',
    'titre_page' => 'Liste des films',
    'date' => date("F j, Y, g:i a")
);



/* inclure l'autoloader */
require_once 'vendor/autoload.php';
$loader = new \Twig\Loader\FilesystemLoader('vue');
$template = new \Twig\Environment($loader, ['cache' => false]);


/* charger+compiler le template, exécuter, envoyer le résultat au navigateur */
echo $template->render('movie.twig', $donnees);

<?php

function news_list() {
    $data = array();
    $currentUser = isLogged();
    
    $data['news'] = model('news')->getAllByUserId($currentUser['id']);
    $data['template_file'] = 'news/list.php';
    render('layout.php', $data);
}

function news_add() {
    $data = array();
    
    if (isPostRequest()) {
        $postData = postData();
        $currentUser = isLogged();
        
        if (model('news')->addToUser($postData, $currentUser['id'])) {
            redirect('index.php?c=news&m=list.php');
        }
    }
    
    $data['template_file'] = 'news/add.php';
    render('layout.php', $data);
}

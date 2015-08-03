<?php

function index_index() {
    redirect('index.php' . (isLogged() ? '?c=news&m=list' : '?c=auth&m=login'));
}

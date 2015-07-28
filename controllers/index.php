<?php

function index_index() {
    redirect('index.php' . (isLogged() ? '?c=payment&m=list' : '?c=auth&m=login'));
}

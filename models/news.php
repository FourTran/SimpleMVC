<?php
	class news extends model {
		public $table = 'news';
		public $primary_key = 'id';


		public function getAllByUserId($user_id) {
			$sql = "SELECT * FROM `{$this->table}`
                    WHERE `user_id` = " . intval($user_id) . "";
        
        return db_get_all($sql);
    	}
    	public function addToUser($postData,$user_id){
        $postData['news_date'] = date("Y-m-d H:i:s");
        $postData['user_id'] = $user_id;
        
        return db_insert($this->table, $postData);
    	}
	}
?>
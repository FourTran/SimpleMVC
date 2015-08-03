<h3>tin tức</h3>
<p>
    <a href="index.php?c=news&m=add" class="btn btn-primary">Thêm tin tức mới</a>
</p>
<table class="table table-bordered">
    <tr>
        <th>#</th>
        <th>Tên bài viết</th>
        <th>nội dung</th>
        <th>ngày đăng</th>
    </tr>
    <?php
        $i = 0;
        $total = 0;
        foreach ($news as $n):
        $i++;
    ?>
    <tr>
        <td><?php echo $i; ?></td>
        <td><?php echo $n['news_title']; ?></td>
        <td><?php echo $n['news_content']; ?></td>
        <td><?php echo $n['news_date']; ?></td>
    </tr>
    <?php        
        endforeach;
        if ($i):
    
     else: ?>
    <tr>
        <td colspan="4" class="text-center"><strong>Chưa có bài viết nào.</strong></td>
    </tr>
    <?php endif; ?>
</table>
<h2>add news</h2>
  <form class="form-horizontal" method="post" action="">
    <div class="form-group">
      <label class="control-label col-sm-1" for="news_title">title : </label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="news_title" placeholder="title">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-1" for="news_content">content : </label>
      <div class="col-sm-10">
        <textarea class="form-control col-sm-4" rows="8" id="news_content"></textarea>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
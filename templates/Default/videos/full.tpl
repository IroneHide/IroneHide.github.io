<div id="video_show_{vid}" class="video_view" onClick="videos.setEvent(event, {owner-id}, '{close-link}')">
  <div class="photo_close" onClick="videos.close({owner-id}, '{close-link}'); return false"></div>
  <div class="photo_bg" style="margin-top:50px;">
    <div class="video_show_object fl_l">
      <div id="video_object">{video}</div>
      [not-owner]
      <div id="addok" style="padding:2px 10px;">
        <a href="/" onClick="videos.addmylist('{vid}'); return false">Добавить в мои видеозаписи</a>
      </div>
      [/not-owner] </div>
    <div class="photo_rightcol">
      <div class="alb_name">{author}
        <a onClick="videos.close({owner-id}, '{close-link}'); return false" class="fl_r" style="font-weight:normal; cursor:pointer; font-size:12px;" onClick="Page.Go(this.href); return false">Закрыть</a>
      </div>
      <div class="photo_info">{date}</div>
      <div class="photo_info" style="margin-top:5px;">{views}</div>
      <div  style="border-bottom:1px solid#464646;width:209px;  border-top:1px solid#787878"></div>
      [public]
      <div class="menuleft1" style="width:209px;margin-top:5px;margin-bottom: 5px;"> 
	  
	  [owner]
        <a href="/" id="edit_photo" onClick="videos.editbox({vid}); return false">
        <div>Редактировать видео</div>
        </a>
        <a href="/" id="delete_photo" onClick="videos.delet({vid}, 1); return false">
        <div>Удалить видео</div>
        </a>
        [/owner]
        <a id="photo_report" onClick="Report.Box('video', '{vid}')">
        <div>Пожаловаться</div>
        </a>
      </div>
      [/public]
      
      <div id="pinfo_{id}" class="pinfo">
        <div class="photo_leftcol"> [all-comm]
          <a href="/" onClick="videos.allcomment({vid}, {comm-num}, {owner-id}); return false" id="all_href_lnk_comm">
          <div class="photo_all_comm_bg" style="width:197px;" id="all_lnk_comm"> Написать комментарий: {prev-text-comm}</div>
          </a>
          <span id="all_comments"></span>[/all-comm]
          [admin-comments]<span id="comments">{comments}</span>
          <div class="photo_com_title">Написать комментарий:</div>
          <textarea id="comment" class="inpst"  style="width:200px; color:#666; border:0px;height:30px;border: 1px solid #c6d4dc;-moz-border-radius: 2px ;-webkit-border-radius: 2px ;border-radius: 2px;-moz-background-clip: padding;-webkit-background-clip: padding-box;background-clip: padding-box;"></textarea>
          <div class="button_div fl_l" style="margin-top:5px;">
            <button onClick="videos.addcomment({vid}); return false" id="add_comm" style="width:210px;">Отправить комментарий</button>
          </div>
          [/admin-comments] </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>

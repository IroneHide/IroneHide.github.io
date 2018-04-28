<div class="" id="comment_{id}" style="width:210px;
margin-top: 5px;
border: 1px solid#E8E8E8;
background: #fff;
border-radius: 10px;">
  <div class="ava_mini" onClick="Page.Go('/u{uid}'); return false" style="float:left; cursor:pointer;width:50px; margin-top:5px;"><img src="{ava}" style="-moz-box-shadow: 0 0 5px rgba(0,0,0,.75), inset 0 1px 5px rgba(255,255,255,.75);
-webkit-box-shadow: 0 0 5px rgba(0,0,0,.75), inset 0 1px 5px rgba(255,255,255,.75);
box-shadow: 0 0 5px rgba(0,0,0,.75), inset 0 1px 5px rgba(255,255,255,.75); border-radius:50px; width:40px;"
 /></div>
  <div style="float:left;width:160px;word-wrap:break-word; margin-left:-10px; ">
    <div class="wallauthor">
      <a href="/u{uid}" style="color:#666" onClick="Page.Go(this.href); return false">{author}</a>
    </div>{date}
    <div style="color:#666;margin-top:2px;font-size:13px;word-wrap:break-word;"> {comment}</div>
    <div class="infowalltext">[owner]
      <a href="/" style="color:#666;float:right;" onClick="comments.delet({id}, '{hash}'); return false" id="del_but_{id}">удалить</a>
      [/owner]</div>
  </div>
  <div class="clear"></div>
</div>
<div class="clear"></div>

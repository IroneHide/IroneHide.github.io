<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">

[logged]<style type="text/css" media="all">back {font-family:tahoma, arial, verdana, sans-serif, Lucida Sans;background: url('{fon_facemy}') no-repeat center top fixed;margin:0px;padding:0px;font-size:11px;overflow-x:hidden;-moz-background-size:cover;-o-background-size:100% auto;-webkit-background-size:100% auto;-khtml-background-size:cover;background-size:cover;}</style>
<back></back>[/logged]

<head>
{header}
<noscript><meta http-equiv="refresh" content="0; URL=/badbrowser.php"></noscript>
<link media="screen" href="{theme}/style/style.css" type="text/css" rel="stylesheet" /> 
[not-logged]<link rel="stylesheet" href="{theme}/style/reg.css">[/not-logged] 
<link rel="stylesheet" href="{theme}/style/css/lifen12.css">
<link rel="stylesheet" href="{theme}/style/css/animation.css"><!--[if IE 7]><link rel="stylesheet" href="css/lifen12-ie7.css"><![endif]-->
<script type="text/javascript" src="{theme}/js/fon.js"></script>

{js}[not-logged]<script type="text/javascript" src="{theme}/js/reg.js"></script>[/not-logged]


</head>
<body onResize="onBodyResize()" class="no_display">

<div class="scroll_fix_bg no_display" onMouseDown="myhtml.scrollTop()"><div class="scroll_fix_page_top">Наверх</div></div>
<div id="doLoad"></div>

  [logged]
<div class="head">
   <div id="gt-t-topmenu" class="clearfix">
<div id="logo" class="fl-left">
<a href="/" class="logo-dm non-ajax"></a>
</div>


<ul id="gt-t-menu" class="fl-right clearfix">
<li><a href="/?act=logout" style="line-height: 40px;" class="non-ajax">Выход</a></li>
<li><span class="tooltipes"><a class="info-info relative-box" href="/settings" onClick="Page.Go(this.href); return false;"><div class="prfrnc"></div></a><span class="classic">Настройки</span></span></li>
<li><span class="tooltipes"><a class="info-info relative-box" href="/news{news-link}" onClick="Page.Go(this.href); return false;" id="news_link"><div class="log-ic"></div><div id="new_news">{new-news}</div></a><span class="classic">Новости</span></span></li>
<li><span class="tooltipes"><a class="info-info relative-box" href="/messages" onClick="Page.Go(this.href); return false;"><div class="msg"><div id="new_msg">{msg}</div></div></a><span class="classic">Сообщения</span></span></li>
<li><span class="tooltipes"><a class="info-info relative-box" onClick="doLoad.js(0); player.open(); return false;" id="fplayer_pos" href="/audio"><div class="magnifer2" style="position:relative;top:9px;"></div></a><span class="classic">Музыка</span></span></li>
<li><span class="tooltipes"><a class="relative-box info-info" href="/?go=search" onClick="Page.Go(this.href); return false;"><div class="magnifer21"></div></a><span class="classic">Поиск</span></span></li>
</ul>     
</div>
</div>
   [/logged]
</div>

<div class="clear"></div>


[logged]
<div style="margin-top:40px;"></div>


<div id="gt-c">
<div id="gt-s">
<div id="user-card" class="gt-s-m">
<div id="user-name"><a href="{my-page-link}">{my-name}</a></div>
<div id="user-avatar">
<a class="bordergrey110 white" href="{my-page-link}">{myphoto_header}</a>
</div>
<div id="user-rate">
<div id="km">
<div class="fl-left">
<a href="#" onClick="Profile.LoadPhoto(); return false;"><i class="icon-camera"></i></a>
</div>

</div>

<div id="ltrs">
<div class="fl-left">
<a href="#" onClick="Profile.miniature(); return false;"><i class="icon-crop"></i></a>
</div>
</div>


<div id="rtng">
<div class="blo fl-left">
<a href="#" onClick="Profile.DelPhoto(); return false;" id="del_pho_but" {display-ava}><i class="icon-trash-1"></i></a>
</div>
</div>

<div id="rtngs">
<div class="fl-left">
<a href="#" onclick="doLoad.data(1); fon.addbox()"><i class="icon-list-alt"></i></a>
</div>
</div>

</div>


<div class="clear"></div>
</div>

 <div class="panelUsers">
   <a class="act ative1 ic_my" href="{my-page-link}" onClick="Page.Go(this.href); return false;"">Моя страница</a>
   <a class="act ative2 ic_friendss" href="/friends{requests-link}" onClick="Page.Go(this.href); return false;" id="requests_link">Друзья<div class="ic_friendss" id="myprof3" onMouseOut="$('.js_titleRemove').remove();"><div id="new_requests" style=" margin-left: 45px; margin-top: -5px; ">{demands}</div></div></a>
   <a class="act ative3 ic_foto" href="/albums/{my-id}" onClick="Page.Go(this.href); return false;" id="requests_link_new_photos">Фотографии<div class="" id="myprof4" onMouseOut="$('.js_titleRemove').remove();"><div id="new_photos">{new_photos}</div></div></a>
   <a class="ative4 ic_music" href="/audio" onClick="doLoad.js(0); player.open(); return false;">Аудиозаписи<div onMouseOut="$('.js_titleRemove').remove();" id="myprof6" class=""></div></a>
   <a class="ative5 ic_video" href="/videos" onClick="Page.Go(this.href); return false;">Видеозаписи<div onMouseOut="$('.js_titleRemove').remove();" id="myprof6" class=""></div></a>
   <a class="ative7 ic_groups" href="{groups-link}" onClick="Page.Go(this.href); return false;" id="new_groups_lnk">Сообщества<div onMouseOut="$('.js_titleRemove').remove();" id="myprof8" class=""><div id="new_groups">{new_groups}</div></div></a>
   <a class="ative8 ic_notes" href="/notes" onClick="Page.Go(this.href); return false;">Заметки<div onMouseOut="$('.js_titleRemove').remove();" id="myprof10" class=""></div></a>
   <a class="ative10 ic_fave" href="/fave" onClick="Page.Go(this.href); return false;">Закладки<div id="myprof5" class="" onMouseOut="$('.js_titleRemove').remove();"></div></a>
   <a class="ative12 ic_game" href="/apps" onClick="Page.Go(this.href); return false;">Приложения<div id="myprof5" class="" onMouseOut="$('.js_titleRemove').remove();"></div></a>
   <a class="ative13 ic_docs" href="/docs" onClick="Page.Go(this.href); return false;">Документы<div id="myprof5" class="" onMouseOut="$('.js_titleRemove').remove();"></div></a>
   <a class="ative14 ic_settings" href="/settings" onClick="Page.Go(this.href); return false;">Настройки<div id="myprof5" class="" onMouseOut="$('.js_titleRemove').remove();"></div></a>
  </div> 



</div> 
</div> 

 


 
 
 <div id="gt-wa-c">
<div id="gt-wa" style="min-height:620px;">

 <div class="content" style="width:100%;">
  <div class="speedbar no_display" id="">{speedbar}</div>
  <div class="padcont">
   <div id="audioPlayer"></div>
   <div id="page">{info}{content}</div>
   <div class="clear"></div>
  </div>
   </div>
  </div>
  
  

  <div class="footer">
   MixLife &copy; 2015 <a class="cursor_pointer" onClick="trsn.box()" onMouseOver="myhtml.title('1', 'Выбор используемого языка на сайте', 'langTitle', 1)" id="langTitle1">{lang}</a>
   <div class="fl_r">
	<a href="/live" onClick="Page.Go(this.href); return false">о сайте</a>
    <a href="/?go=search&online=1" onClick="Page.Go(this.href); return false">люди</a>
    <a href="/?go=search&type=2" onClick="Page.Go(this.href); return false">видео</a>
    <a href="/?go=search&type=5" onClick="Page.Go(this.href); return false">музыка</a>
    <a href="/support?act=new" onClick="Page.Go(this.href); return false">помощь</a>
    <a href="/reviews" onClick="Page.Go(this.href); return false">отзывы</a>
    <a href="/blog" onClick="Page.Go(this.href); return false">блог</a>
   </div>
  </div>
 </div>
 [/logged]
 
  [not-logged]<div id="page">{info}{content}</div>[/not-logged]
 
</div>

[logged]<script type="text/javascript" src="{theme}/js/push.js"></script>
<div class="no_display"><audio id="beep-three" controls preload="auto"><source src="{theme}/images/soundact.ogg"></source></audio></div>
<div id="updates"></div>[/logged]
<div class="clear"></div>

</body>
</html>
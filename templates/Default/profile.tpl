{url_img}
<script type="text/javascript">[after-reg]Profile.LoadPhoto();[/after-reg]
var startResizeCss = false;
var user_id = '{user-id}';
$(document).ready(function(){
	music.jPlayerInc();
	$('#wall_text, .fast_form_width').autoResize();
	[owner]if($('.profile_onefriend_happy').size() > 4) $('#happyAllLnk').show();
	ajaxUpload = new AjaxUpload('upload_cover', {
		action: '/index.php?go=editprofile&act=upload_cover',
		name: 'uploadfile',
		onSubmit: function (file, ext) {
			if(!(ext && /^(jpg|png|jpeg|gif|jpe)$/.test(ext))) {
				addAllErr(lang_bad_format, 3300);
				return false;
			}
			$("#les10_ex2").draggable('destroy');
			$('.cover_loaddef_bg').css('cursor', 'default');
			$('.cover_loading').show();
			$('.cover_newpos, .cover_descring').hide();
			$('.cover_profile_bg').css('opacity', '0.4');
		},
		onComplete: function (file, row){
			if(row == 1 || row == 2) addAllErr('Максимальны размер 7 МБ.', 3300);
			else {
				$('.cover_loading').hide();
				$('.cover_loaddef_bg, .cover_hidded_but, .cover_loaddef_bg, .cover_descring').show();
				$('#upload_cover').text('Изменить фото');
				$('.cover_profile_bg').css('opacity', '1');
				$('.cover_loaddef_bg').css('cursor', 'move');
				$('.cover_newpos').css('position', 'absolute').css('z-index', '2').css('margin-left', '197px').show();
				row = row.split('|');
				rheihht = row[1];
				postop = (parseInt(rheihht/2)-100);
				if(rheihht <= 230) postop = 0;
				$('#les10_ex2').css('height', +rheihht+'px').css('top', '-'+postop+'px');
				cover.init('/uploads/users/'+row[0], rheihht);
				$('.cover_addut_edit').attr('onClick', 'cover.startedit(\'/uploads/users/'+row[0]+'\', '+rheihht+')');
			}
		}
	});[/owner]
});
$(document).click(function(event){
	wall.event(event);
});
</script>
<input type="hidden" id="type_page" value="profile" />
<style>.newcolor000{color:#000}</style>
<div id="jquery_jplayer"></div>
<input type="hidden" id="teck_id" value="" />
<input type="hidden" id="teck_prefix" value="" />
<input type="hidden" id="typePlay" value="standart" />
[owner]<div class="cover_loading no_display"><img src="{theme}/images/progress_gray.gif" /></div>
<div class="cover_profile_bg">
 <div class="cover_buts_pos">
  <div class="cover_newpos" {cover-param-3}>
  <div class="cover_addut cover_hidded_but" onClick="cover.cancel('{cover-pos}')">Отмена</div>
  <div class="cover_addut cover_hidded_but" onClick="cover.del()">Удалить</div>
  <div class="cover_addut {cover-param-2}" id="upload_cover">Добавить обложку</div>
  <div class="cover_addut cover_hidded_but" onClick="cover.save()">Сохранить</div>
  <div id="cover_addut_edit" class="no_display"><div class="cover_addut_edit {cover-param}" onClick="cover.startedit('{cover}', '{cover-height}')">Редактировать обложку</div></div>
  </div>
  <div class="cover_loaddef_bg {cover-param}" {cover-param-4}>
   <div class="cover_descring {cover-param-2}">Обложку можно двигать по высоте</div>
   <div id="les10_ex2" {cover-param-5}><img src="{cover}" width="910" id="cover_img" /></div>
   <div id="cover_restart"></div>
  </div>
 </div>
</div>[/owner]

[not-owner]<div class="cover_profile_bg"><div class="cover_all_user"><img src="{cover}" width="910" id="cover_img" {cover-param-5} /></div> </div>[/not-owner]

<div id="user-page-t1" class="clearfix rate_cntr" data-type="a">
<h1 id="user-page-h1">{name} {lastname} {user_real}  <b> {online} </b></h1>


<div class="user-page-g fl-left">
<span class="star16w"></span>
  [owner]<a class="cursor_pointer" onClick="doLoad.data(1); rating.view()" style="text-decoration:none">[/owner]
<span class="rate_score" id="profile_rate_num">{rating}[owner]</a>[/owner]</span>
</div>
<div class="user-page-fingers fl-left ">
<div class="user-page-finger-wrap fl-left likes">
<span class="finger-up-16" onClick="doLoad.data(1); rating.addbox('{user-id}')" onMouseOver="myhtml.title('1', 'Повысить рейтинг', 'rate', 1)" id="rate1"></span>
</div>
</div>



 [owner]<div class="set_status_bg no_display" id="set_status_bg">
  <input type="text" id="status_text" class="status_inp" value="{status-text}" style="width:500px;" maxlength="255" onKeyPress="if(event.keyCode == 13)gStatus.set()" />
  <div class="fl_l status_text"><span class="no_status_text [status]no_display[/status]">Введите здесь текст Вашего статуса.</span><a href="/" class="yes_status_text [no-status]no_display[/no-status]" onClick="gStatus.set(1); return false">Удалить статус</a></div>
  [status]<div class="button_div button fl_r status_but margin_left"><button>Отмена</button></div>[/status]
  <div class="button_div fl_r status_but"><button id="status_but" onClick="gStatus.set()">Сохранить</button></div>
 </div>[/owner]
 
 <div class="status">



  <div>[owner]<a href="/" id="new_status" onClick="gStatus.open(); return false">[/owner][blacklist]{status-text}[/blacklist][owner]</a>[/owner]</div>
  [owner]<span id="tellBlockPos"></span>
  <div class="status_tell_friends no_display">
   <div class="html_checkbox" id="tell_friends" onClick="myhtml.checkbox(this.id); gStatus.startTell()">Рассказать друзьям</div>
  </div>[/owner]
  [owner]<a href="#" onClick="gStatus.open(); return false" id="status_link" [status]class="no_display"[/status]>установить статус</a>[/owner]
 </div>


<div class="bordergrey">
<div class="bordergrey12 white">
<span id="ava"><a href="#" id="ava_{user-id}"><img src="{ava}"></a></span>



</div>
</div>

[not-owner]
<ul class="user-page-actions clearfix fl-right">
<li>
[blacklist][privacy-msg]<a href="/" onClick="messages.new_({user-id}); return false"><span class="tooltipe"><i class="icon-mail-alt"></i><span class="classic">Отправить сообщение</span></span></a>[/privacy-msg][/blacklist]
</li>
<li>
[no-friends][blacklist]<a href="/" onClick="friends.add({user-id}); return false"><span class="tooltipe"><i class="icon-user-add"></i><span class="classic">Добавить в друзья</span></span></a>[/blacklist][/no-friends]
[yes-friends]<a href="/" onMouseDown="friends.delet({user-id}, 0); return false"><span class="tooltipe"><i class="icon-block"></i><span class="classic">Удалить из друзей</span></span></a>[/yes-friends]
</li>
<li>
[blacklist][no-subscription]<a href="/" onClick="subscriptions.add({user-id}); return false" id="lnk_unsubscription"><div><span id="text_add_subscript"><span class="tooltipe"><i class="icon-loop-outline"></i><span class="classic">Подписаться</span></span></span></div></a>[/no-subscription][/blacklist]
[yes-subscription]<a href="/" onClick="subscriptions.del({user-id}); return false" id="lnk_unsubscription"><div><span id="text_add_subscript"><span class="tooltipe"><i class="icon-loop-alt-outline"></i><span class="classic">Отписаться</span></span></span></div></a>[/yes-subscription]
</li>
<li>
<a href="/" onClick="gifts.box('{user-id}'); return false"> <span class="tooltipe"><i class="icon-gift"></i><span class="classic">Отправить подарок</span></span></a>
</li>
<li>
[no-fave]<a href="/" onClick="fave.add({user-id}); return false" id="addfave_but"><div><span id="text_add_fave"><span class="tooltipe"><i class="icon-bookmark"></i><span class="classic">Добавить в закладки</span></span></span></div></a>[/no-fave]
[yes-fave]<a href="/" onClick="fave.delet({user-id}); return false" id="addfave_but"><div><span id="text_add_fave"><span class="tooltipe"><i class="icon-bookmark-empty"></i><span class="classic">Убрать из закладок</span></span></span></div></a>[/yes-fave]
</li>
<li>
[no-blacklist]<a href="/" onClick="settings.addblacklist({user-id}); return false" id="addblacklist_but"><div><span id="text_add_blacklist"><span class="tooltipee"><i class="icon-lock"></i><span class="classic">Заблокировать</span></span></span></div></a>[/no-blacklist]
[yes-blacklist]<a href="/" onClick="settings.delblacklist({user-id}, 1); return false" id="addblacklist_but"><div><span id="text_add_blacklist"><span class="tooltipee"><i class="icon-lock-open"></i><span class="classic">Разблокировать</span></span></span></div></a>[/yes-blacklist]
</li>
</ul>
[/not-owner]

</div>

<div class="profiewr">

 <div class="user-page-name border-shadow cursor_pointer" onClick="Profile.MoreInfo(); return false" id="moreInfoLnk">
<div id="about_btn" class="about_btn" id="moreInfoText">Показать подробную информацию<span class="arrow-d"></span></div>
<div class="user-page-name-inner clearfix display-none" id="moreInfo" style="display: none;">


  <div style="min-height:50px">
 [not-all-country]<div class="flpodtext">Страна:</div> <div class="flpodinfo"><a href="/?go=search&country={country-id}" onClick="Page.Go(this.href); return false">{country}</a></div>[/not-all-country]
 [not-all-city]<div class="flpodtext">Город:</div> <div class="flpodinfo"><a href="/?go=search&country={country-id}&city={city-id}" onClick="Page.Go(this.href); return false">{city}</a></div>[/not-all-city]
 [blacklist][not-all-birthday]<div class="flpodtext">День рождения:</div> <div class="flpodinfo">{birth-day}</div>[/not-all-birthday]
 [privacy-info][sp]<div class="flpodtext">Семейное положение:</div> <div class="flpodinfo">{sp}</div>[/sp][/privacy-info]
 </div>

 [privacy-info][not-block-contact]<div class="fieldset"><div class="w2_a" [owner]style="width:230px;"[/owner]>Контактная информация [owner]<span><a href="/editmypage/contact" onClick="Page.Go(this.href); return false;">редактировать</a></span>[/owner]</div></div>
 [not-contact-phone]<div class="flpodtext">Моб. телефон:</div> <div class="flpodinfo">{phone}</div>[/not-contact-phone]
 [not-contact-vk]<div class="flpodtext">В контакте:</div> <div class="flpodinfo">{vk}</div>[/not-contact-vk]
 [not-contact-od]<div class="flpodtext">Одноклассники:</div> <div class="flpodinfo">{od}</div>[/not-contact-od]
 [not-contact-fb]<div class="flpodtext">FaceBook:</div> <div class="flpodinfo">{fb}</div>[/not-contact-fb]
 [not-contact-skype]<div class="flpodtext">Skype:</div> <div class="flpodinfo"><a href="skype:{skype}">{skype}</a></div>[/not-contact-skype]
 [not-contact-icq]<div class="flpodtext">ICQ:</div> <div class="flpodinfo">{icq}</div>[/not-contact-icq]
 [not-contact-site]<div class="flpodtext">Веб-сайт:</div> <div class="flpodinfo">{site}</div>[/not-contact-site][/not-block-contact]
 <div class="fieldset"><div class="w2_b" [owner]style="width:200px;margin-top:15px;"[/owner]>Личная информация [owner]<span><a href="/editmypage/interests" onClick="Page.Go(this.href); return false;">редактировать</a></span>[/owner]</div></div>{not-block-info}
 [not-info-activity]<div class="flpodtext">Деятельность:</div> <div class="flpodinfo">{activity}</div>[/not-info-activity]
 [not-info-interests]<div class="flpodtext">Интересы:</div> <div class="flpodinfo">{interests}</div>[/not-info-interests]
 [not-info-music]<div class="flpodtext">Любимая музыка:</div> <div class="flpodinfo">{music}</div>[/not-info-music]
 [not-info-kino]<div class="flpodtext">Любимые фильмы:</div> <div class="flpodinfo">{kino}</div>[/not-info-kino]
 [not-info-books]<div class="flpodtext">Любимые книги:</div> <div class="flpodinfo">{books}</div>[/not-info-books]
 [not-info-games]<div class="flpodtext">Любимые игры:</div> <div class="flpodinfo">{games}</div>[/not-info-games]
 [not-info-quote]<div class="flpodtext">Любимые цитаты:</div> <div class="flpodinfo">{quote}</div>[/not-info-quote]
 [not-info-myinfo]<div class="flpodtext">О себе:</div> <div class="flpodinfo">{myinfo}</div>[/not-info-myinfo][/privacy-info]

</div>
</div>
 
 <a href="/wall{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle" style="border-bottom:0px">Стена <span id="wall_rec_num">{wall-rec-num}</span></div></a>
 [privacy-wall]<div class="newmes" id="wall_tab" style="border-bottom:0px;margin-bottom:-5px">
  <input type="hidden" value="[owner]Что у Вас нового?[/owner][not-owner]Написать сообщение...[/not-owner]" id="wall_input_text" />
  <input type="text" class="wall_inpst" value="[owner]Что у Вас нового?[/owner][not-owner]Написать сообщение...[/not-owner]" onMouseDown="wall.form_open(); return false" id="wall_input" style="margin:0px" />
  <div class="no_display" id="wall_textarea">
   <textarea id="wall_text" class="wall_inpst wall_fast_opened_texta" style="width:534px"
	onKeyUp="wall.CheckLinkText(this.value)"
	onBlur="wall.CheckLinkText(this.value, 1)">
   </textarea>
   <div id="attach_files" class="margin_top_10 no_display"></div>
   <div id="attach_block_lnk" class="no_display clear">
   <div class="attach_link_bg">
    <div align="center" id="loading_att_lnk"><img src="{theme}/images/loading_mini.gif" style="margin-bottom:-2px" /></div>
    <img src="" align="left" id="attatch_link_img" class="no_display cursor_pointer" onClick="wall.UrlNextImg()" />
	<div id="attatch_link_title"></div>
	<div id="attatch_link_descr"></div>
	<div class="clear"></div>
   </div>
   <div class="attach_toolip_but"></div>
   <div class="attach_link_block_ic fl_l"></div><div class="attach_link_block_te"><div class="fl_l">Ссылка: <a href="/" id="attatch_link_url" target="_blank"></a></div><img class="fl_l cursor_pointer" style="margin-top:2px;margin-left:5px" src="{theme}/images/close_a.png" onMouseOver="myhtml.title('1', 'Не прикреплять', 'attach_lnk_')" id="attach_lnk_1" onClick="wall.RemoveAttachLnk()" /></div>
   <input type="hidden" id="attach_lnk_stared" />
   <input type="hidden" id="teck_link_attach" />
   <span id="urlParseImgs" class="no_display"></span>
   </div>
   <div class="clear"></div>
   <div id="attach_block_vote" class="no_display">
   <div class="attach_link_bg">
	<div class="texta">Тема опроса:</div><input type="text" id="vote_title" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" 
		onKeyUp="$('#attatch_vote_title').text(this.value)"
	/><div class="mgclr"></div>
	<div class="texta">Варианты ответа:<br /><small><span id="addNewAnswer"><a class="cursor_pointer" onClick="Votes.AddInp()">добавить</a></span> | <span id="addDelAnswer">удалить</span></small></div><input type="text" id="vote_answer_1" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" /><div class="mgclr"></div>
	<div class="texta">&nbsp;</div><input type="text" id="vote_answer_2" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" /><div class="mgclr"></div>
	<div id="addAnswerInp"></div>
	<div class="clear"></div>
   </div>
   <div class="attach_toolip_but"></div>
   <div class="attach_link_block_ic fl_l"></div><div class="attach_link_block_te"><div class="fl_l">Опрос: <a id="attatch_vote_title" style="text-decoration:none;cursor:default"></a></div><img class="fl_l cursor_pointer" style="margin-top:2px;margin-left:5px" src="{theme}/images/close_a.png" onMouseOver="myhtml.title('1', 'Не прикреплять', 'attach_vote_')" id="attach_vote_1" onClick="Votes.RemoveForAttach()" /></div>
   <input type="hidden" id="answerNum" value="2" />
   </div>
   <div class="clear"></div>
   <input id="vaLattach_files" type="hidden" />
   <div class="clear"></div>
   <div class="button_div fl_l margin_top_10" style="margin-right:5px;"><button onClick="wall.send(); return false" id="wall_send">Отправить</button></div>
   
   
   <div style="margin-top:12px;" id="wall_attach">
          <div class="wall_attach_icon_smile fl_l" onClick="wall.attach_addsmile()" onMouseOver="myhtml.title('smile', 'Прикрепить смайлик', 'attach_wall_')" id="attach_wall_smile">
            <div id="wall_attach_link"></div>
          </div>
          <div class="wall_attach_icon_photo fl_l" onClick="wall.attach_addphoto()" onMouseOver="myhtml.title('photo', 'Прикрепить фото', 'attach_wall_')" id="attach_wall_photo">
            <div id="wall_attach_link"></div>
          </div>
          <div class="wall_attach_icon_video fl_l" onClick="wall.attach_addvideo()" onMouseOver="myhtml.title('video', 'Прикрепить видео', 'attach_wall_')" id="attach_wall_video">
            <div id="wall_attach_link"></div>
          </div>
          <div class="wall_attach_icon_audio fl_l" onClick="wall.attach_addaudio()" onMouseOver="myhtml.title('audio', 'Прикрепить аудио', 'attach_wall_')" id="attach_wall_audio">
            <div id="wall_attach_link"></div>
          </div>
          <div class="wall_attach_icon_doc fl_l" onClick="wall.attach_addDoc()" onMouseOver="myhtml.title('doc', 'Прикрепить документ', 'attach_wall_')" id="attach_wall_doc">
            <div id="wall_attach_link"></div>
          </div>
          <div class="wall_attach_icon_vote fl_l" onClick="$('#attach_block_vote').slideDown('fast');wall.attach_menu('close', 'wall_attach', 'wall_attach_menu');$('#vote_title').focus();$('#vaLattach_files').val($('#vaLattach_files').val()+'vote|start||')" onMouseOver="myhtml.title('vote', 'Прикрепить опрос', 'attach_wall_')" id="attach_wall_vote">
            <div id="wall_attach_link"></div>
          </div>
        </div>
		
		
  </div>
  <div class="clear"></div>
 </div>[/privacy-wall]
 <div id="wall_records">{records}[no-records]<div class="wall_none" [privacy-wall]style="border-top:0px"[/privacy-wall]>На стене пока нет ни одной записи.</div>[/no-records]</div>
 [wall-link]<span id="wall_all_record"></span><div onClick="wall.page('{user-id}'); return false" id="wall_l_href" class="cursor_pointer"><div style="background:#E2E2E2;" class="photo_all_comm_bg wall_upgwi" id="wall_link">к предыдущим записям</div></div>[/wall-link][/blacklist]
 [not-blacklist]<div class="err_yellow" style="font-weight:normal;margin-top:5px">{name} ограничила доступ к своей странице.</div>[/not-blacklist]
</div>
<div class="ava">

[blacklist]<div class="leftcbor">

[albums]<div class="garage-module"><a href="/albums/{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle" style="margin-top:5px">Альбомы <span>{albums-num}</span><div><b>Все</b></div></div></a>{albums}<div class="clear"></div></div>[/albums]
[audios]<div class="garage-module"><div id="jquery_jplayer"></div><input type="hidden" id="teck_id" value="1" /><a href="/audio{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle" style="margin-top:5px">{audios-num}<div><b>Все</b></div></div></a>{audios}<div class="clear"></div></div>[/audios]
[gifts]<div class="garage-module"><a href="/gifts{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle" style="margin-top:5px">{gifts-text}<div><b>Все</b></div></div><center>{gifts}</center><div class="clear"></div></a></div>[/gifts]

 [owner][happy-friends]<div class="garage-module"><div id="happyBLockSess"><div class="albtitle">Дни рожденья друзей <span>{happy-friends-num}</span><div class="profile_happy_hide"><img src="{theme}/images/hide_lef.gif" onMouseOver="myhtml.title('1', 'Скрыть', 'happy_block_')" id="happy_block_1" onClick="HappyFr.HideSess(); return false" /></div></div>
 <div class="newmesnobg profile_block_happy_friends" style="padding:0px;padding-top:10px;">{happy-friends}<div class="clear"></div></div>
 <div class="cursor_pointer no_display" onMouseDown="HappyFr.Show(); return false" id="happyAllLnk"><div class="public_wall_all_comm profile_block_happy_friends_lnk">Показать все</div></div></div></div>
 [/happy-friends][/owner]
  [common-friends]<div class="garage-module"><a href="/friends/common/{user-id}" style="text-decoration:none" onClick="Page.Go(this.href); return false"><div class="albtitle">Общие друзья <span>{mutual-num}</span></div></a>
 <div class="newmesnobg" style="padding:0px;padding-top:10px;">{mutual_friends}<div class="clear"></div>
 </div></div>[/common-friends]
 [friends]<div class="garage-module"><a href="/friends/{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle">Друзья <span>{friends-num}</span></div></a>
 <div class="newmesnobg" style="padding:0px;padding-top:10px;">{friends}<div class="clear"></div>
 </div></div>[/friends]
 [online-friends]<div class="garage-module"><a href="/friends/online/{user-id}" style="text-decoration:none" onClick="Page.Go(this.href); return false"><div class="albtitle">Друзья на сайте <span>{online-friends-num}</span></div></a>
 <div class="newmesnobg" style="padding:0px;padding-top:10px;">{online-friends}<div class="clear"></div>
 </div></div>[/online-friends]
 [subscriptions]<div class="garage-module"><a href="/" onClick="subscriptions.all({user-id}, '', {subscriptions-num}); return false" style="text-decoration:none"><div class="albtitle">Подписки <span>{subscriptions-num}</span></div></a>
 <div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">{subscriptions}<div class="clear"></div>
 </div></div>[/subscriptions]
 [groups]<div class="garage-module"><div class="albtitle cursor_pointer" onClick="groups.all_groups_user('{user-id}')">Сообщества <span id="groups_num">{groups-num}</span></div>
 <div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">{groups}<div class="clear"></div>
 </div></div>[/groups]
 [videos]<div class="garage-module"><a href="/videos/{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle">Видеозаписи <span>{videos-num}</span></div></a>
 <div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">{videos}<div class="clear"></div>
 </div></div>[/videos]
 [notes]<div class="garage-module"><a href="/notes/{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle">Заметки <span>{notes-num}</span></div></a>
 <div class="newmesnobg" style="padding-right:0px;padding-left:5px">{notes}<div class="clear"></div>
 </div></div>[/notes]
<div class="clear"></div>
<span id="fortoAutoSizeStyleProfile"></span>
</div>[/blacklist]
</div>

<div class="clear"></div>
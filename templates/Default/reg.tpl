
<div class="general-top">
<div class="general-top-inner clearfix">
<a href="/" class="logo-dm-f fl-left"></a>
<div class="fl-right enter-form">
<form method="post" id="authorization" action="/">
<input type="text" name="email" id="log_email" maxlength="50" class="input fl-left" placeholder="E-mail">
<input type="password" name="password" id="log_password" maxlength="50" class="input fl-left" placeholder="Пароль">
<button name="log_in" id="login_but" class="buttonz grey fl-left">Войти</button>
<div class="clearfix">
<label class="remember-me fl-left">
<input type="checkbox" class="checkbox" checked="" id="remember_me_checkbox" value="1"> Запомнить меня </label>
<a class="forget fl-left" href="/restore" onClick="Page.Go(this.href); return false">Забыли пароль?</a>

</div>
</form>
</div>
</div>
</div>

<div class="general-banner clearfix" style="background-image:url({theme}/images/14.jpg)">
<div class="general-banner-inner">

<div class="general-banner-cont general-cage-cont" id="signup">
<div class="fl-left general-intro">
<h1 class="h1">Международная<br>социальная сеть<br> MIXLIFE</h1>
<div class="clearfix desc">
<div class="bullet-piston fl-left"></div>Создавайте свои страницы
</div>
<div class="clearfix desc">
<div class="bullet-piston fl-left"></div>Находите друзей по всему миру
</div>
<div class="clearfix desc">
<div class="bullet-piston fl-left"></div>Общайтесь с удовольствием
</div>
</div>

<div class="fl-right intro-form">
<div class="register-form">
<div class="g1">Регистрация</div>
<div id="step1">
<div class="errr no_display frmero" id="err" style="margin-bottom:0px"></div>
<input type="text" id="name" class="input hint_blur hint" placeholder="Имя" maxlength="40">
<input type="text" id="lastname" class="input hint_blur hint" placeholder="Фамилия" maxlength="40" >
<button onClick="reg.step1(); return false" class="submit_signup buttonz register-buttonz">Шаг 2</button>
</div>

<div class="no_display" id="step2">
<select id="sex" placeholder="Фамилия" class="sty inputs hint_blur hint">
 <option value="0">Выбрать пол</option>
 <option value="1">мужской</option>
 <option value="2">женский</option>
</select>

<select id="day" class="inputs hint_blur hint">
 <option>День рождения</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
</select>
<div class="clear"></div>
<select id="month" class="inputs hint_blur hint">
 <option>Месяц рождения</option><option value="1">Января</option><option value="2">Февраля</option><option value="3">Марта</option><option value="4">Апреля</option><option value="5">Мая</option><option value="6">Июня</option><option value="7">Июля</option><option value="8">Августа</option><option value="9">Сентября</option><option value="10">Октября</option><option value="11">Ноября</option><option value="12">Декабря</option>
</select>
<div class="clear"></div>
<select id="year" class="inputs hint_blur hint">
 <option>Год рождения</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option>
</select>
<div class="clear"></div>
<select id="country" class="inputs hint_blur hint" onChange="Profile.LoadCity(this.value); return false;"><option value="0">Выбрать страну</option>{country}
</select><img src="{theme}/images/loading_mini.gif" alt="" class="load_mini" id="load_mini" />
<div class="clear"></div>
<span id="city" style="display:none;">
<select name="city" id="select_city" class="inputs hint_blur hint"><option>Выбрать город</option></select>
<div class="clear"></div></span>


<span id="city" style="display:none;">
<select name="city" id="select_city" class="inputs hint_blur hint"><option>Выбрать город</option></select>
<div class="clear"></div></span>
<button onClick="reg.step2(); return false" class="submit_signup buttonz register-buttonz">Шаг 3</button>
</div>
<div class="no_display" id="step3">
<div class="errr no_display frmero" id="err2" style="margin-bottom:0px"></div>
<input type="email" id="email" class="input hint_blur hint" placeholder="E-mail">
<input type="password" id="new_pass" class="input hint_blur hint" placeholder="Пароль" maxlength="200">
<input type="password" id="new_pass2" class="input hint_blur hint" placeholder="Пароль еще раз" maxlength="200">

<input type="hidden" id="lang_code" value="ru">
<button onClick="reg.finish(); return false" class="submit_signup buttonz register-buttonz">Зарегистрироваться</button>
</div>

</div>
</div>
<div class="m-w-closed close_btn"></div>
</div>
</div>
</div>



<div class="general-cont-wrap">
<div class="general-cont clearfix">
<a name="gontalk"></a>
<div class="gotalk clearfix">
<div class="text">
<div class="text-p">
<div class="p">Наша социальная сеть имеет безграничные возможности</div>
<div class="p">Общайтесь по всему миру на любом языке</div>
<div class="p">В социальной сети вы можете общаться на русском языке с людьми, языка которых вы не знаете.</div>

</div>
</div>
</div>
</div>
</div>

<div class="footers">
<div class="footer-inner clearfix">
<div class="copy fl-left">&copy; MIXLIFE 2014–2015</div>
<div class="footer-menu">
<ul class="auth-menu clearfix">
<li class="menu-li"><a class="menu-a" href="/?go=search&online=1">люди</a></li>
<li class="menu-li"><a class="menu-a" href="/support?act=new">помощь</a></li>
<li class="menu-li"><a class="menu-a" href="/reviews">отзывы</a></li>
<li class="menu-li"><a class="menu-a" href="/blog">блог</a></li>
</ul>
</div>
</div>
</div>
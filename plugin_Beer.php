<?php
/* beer plugin
 * @author Pp Galvan - LdrMx
 */

/*input*/
$view_beers = ( isset($_POST['view']) ? $_POST['view'] : ( isset($_GET['view']) ? $_GET['view'] : '' ) );

/*adding to array menu in wall & profile*/
if($wo['loggedin'] == true){
	//load css & js
	$wo['plugin_list']['header_css'][] = 'beer/css/beer';
	$wo['plugin_list']['footer_js'][] = 'beer/js/beer';
	
	//menu home
	$wo['plugin_list']['plugin_menu'][] = array('name' => 'beers', 'link' => 'beers', 'image' => 'beer/img/beer.png', 'icon'=> 'fa-beer', 'title' => 'beers' ); 
	// header
	$wo['plugin_list']['plugin_head_menu_down'][] = array('name' => 'beers', 'class'=>'visible-xs-block', 'url' => '', 'link' => 'beers', 'icon'=> 'fa-beer', 'title' => 'beers' );
	
		//ADMIN
	if($plugin_page == "admin-plugins"){
		// menu admin   
		$wo['plugin_list']['admin_menu'][] = array('beer List' => 'beer_list');
		$wo['plugin_list']['admin_tab'][] = array('beer_list' => 'beer/admin/beer_list');
	}
	
	if($plugin_page == 'beers'){
		
		/*class of plugin*/
		include "assets/plugins/beer/class_beer.php";    
		//theme
		$wo['plugin_list']['plugin_wo'][] = array('beers' => 'index'); 
		//title
		$wo['page']        = 'beers';
		$wo['title']       = 'beers | ' . $wo['config']['siteTitle'];  
		/*view input add*/
		$wo['plugin_list']['index_view'][] = 'beers';    
		/*index content*/
		$wo['plugin_list']['index_content'][] = array('beers' => 'beer/beers.phtml');  
		
	}else if($plugin_page == 'timeline'){ 
		$wo['plugin_list']['plugin_main_profile'][] = array('name' => 'beer', 'image' => 'beer/img/beers.png', 'icon' => 'fa-beer', 'title' => 'Send a beer' );
	}  
}
?>
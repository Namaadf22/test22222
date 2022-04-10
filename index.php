<?php
 /*
 * ระบบนี้จัดทำโดย jane-studio  ห้ามจำหน่ายโดยเด็ดขาด
 * หากแก้ไข ถือว่าเป็นการละเมิดลิขสิทธิ์ซอฟท์แวร์ มีโทษปรับตั้งแต่ 10,000 บาท จนถึง 200,000 บาท จำคุก 3-6 เดือน หรือทั้งจำทั้งปรับ
 * https://www.jane-studio.com
 */
session_start();

require 'library/notify.php';

/*
 * include file start
 */
require 'library/core.php';
require 'library/cons.php';
require 'library/security.php';
require 'library/database.php';
require 'library/thaidate.php';

$baseUrl = base_url();
$basePath = base_path();

$onpage = isset($_GET['onpage']) ? $_GET['onpage'] : "front";
$url = isset($_GET['url']) ? $_GET['url'] : "home";
$a = isset($_GET['a']) ? $_GET['a'] : "index";

$db = new database();

function checkstock($id,$stack) {
	$db = new database();
	if ($stack){
		$sql_pd = 'SELECT amount FROM product_info WHERE product_id = ' . $id . ' ';
		$query_pd = $db->query($sql_pd);
		$rs_pc = $db->get($query_pd);
		return $rs_pc['amount'];
	} else {
		$sql_pd = 'SELECT sum(status) AS amount FROM product_info WHERE product_id = ' . $id . ' AND status = 1 ';
		$query_pd = $db->query($sql_pd);
		$rs_pc = $db->get($query_pd);
		if ($rs_pc['amount']){
			return $rs_pc['amount'];
		} else {
			return '0';
		}
	}
}

if(!isset($_SESSION['username'])){

} else {
$now = time();
	if ($now > $_SESSION['expire']) {
		session_destroy();
	}
}

if ($onpage == "back" AND $a != "users") {
    $security = new security();
    $security->check("admin");
}

if (file_exists("application/" . $onpage . "/" . $url . "/" . $a . ".php")) {

    require ("application/" . $onpage . "/" . $url . "/" . $a . ".php");
} else {
    header('location:' . $baseUrl);
}

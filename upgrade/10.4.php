<?php

if( ! defined( 'DATALIFEENGINE' ) ) {
	die( "Hacking attempt!" );
}

if( !$_SESSION['step_update'] ) {

	$tableSchema[] = "ALTER TABLE `" . PREFIX . "_usergroups` ADD `max_edit_days` TINYINT(1) NOT NULL DEFAULT '0'";
	$tableSchema[] = "ALTER TABLE `" . PREFIX . "_usergroups` ADD `spampmfilter` TINYINT(1) NOT NULL DEFAULT '2'";


	foreach($tableSchema as $table) {
		$db->query ($table);
	}

	if ($db->error_count) {
	
		$error_info = "����� ������������� ��������: <b>".$db->query_num."</b> ��������� ��������� ��������: <b>".$db->error_count."</b>. �������� ��� ��� ��������� �����.<br /><br /><div class=\"quote\"><b>������ �� ����������� ��������:</b><br /><br />"; 
	
		foreach ($db->query_list as $value) {
	
			$error_info .= $value['query']."<br /><br />";
	
		}
	
		$error_info .= "</div>";
	
	} else $error_info = "";

	$sql_info = "<div style=\"background:#F2DDDD;border:1px solid #992A2A;padding:5px;color: #992A2A;text-align: justify;\"><b>������ ����������:</b><br /><br />�� ��������� ���� ������� ���������� DLE ���������� ��������� ������� ������ ��� ������� �������������. �� ��������� ������� ������ ���������� ������� ������� ����� �������� ��������������� ����� � �������� �� ������ ���� ��������� PHP ��������. ���� ������ �������� � ������ �� ����� ��������, �� ��� ���������� ����� ��������� ������ ������ ������� ���������� SSH. ���������� ������, ������� ��� ���������� ����� ���������, ���� �� �� ����� �������� �������������:<br/><br/><b>ALTER TABLE `" . PREFIX . "_comments` ADD `parent` INT(11) NOT NULL DEFAULT '0', ADD INDEX `parent` (`parent`);</b><br /><br /></div>";

	$_SESSION['step_update'] = 1;

	if ( $error_info ) {

		msgbox("info","����������", "{$error_info}<br />{$sql_info}<br /><br />������� ����� ��� ����������� �������a ���������� �������.");

	} else {

	    msgbox("info","����������", "<br /><div style=\"border: 1px solid #475936; background: #6F8F52; color: #FFFFFF;padding:8px;text-align: justify;\">���� ������� ��������� <b>".$db->query_num."</b> ��������.</div><br /><br />{$sql_info}<br /><br />������� ����� ��� ����������� �������a ���������� �������.");

	}

	die();
}

if( $_SESSION['step_update'] == 1 ) {

	$db->query ("ALTER TABLE `" . PREFIX . "_comments` ADD `parent` INT(11) NOT NULL DEFAULT '0', ADD INDEX `parent` (`parent`)");

	if ($db->error_count) {
	
		$error_info = "����� ������������� ��������: <b>".$db->query_num."</b> ��������� ��������� ��������: <b>".$db->error_count."</b>. �������� ��� ��� ��������� �����.<br /><br /><div class=\"quote\"><b>������ �� ����������� ��������:</b><br /><br />"; 
	
		foreach ($db->query_list as $value) {
	
			$error_info .= $value['query']."<br /><br />";
	
		}
	
		$error_info .= "</div>";
	
	} else $error_info = "";

	$_SESSION['step_update'] = 2;

	$sql_info = "<div style=\"background:#F2DDDD;border:1px solid #992A2A;padding:5px;color: #992A2A;text-align: justify;\"><b>������ ����������:</b><br /><br />�� ��������� ���� ������� ���������� DLE ���������� ��������� ������� ������ ��� ������� �������������. �� ��������� ������� ������ ���������� ������� ������� ����� �������� ��������������� ����� � �������� �� ������ ���� ��������� PHP ��������. ���� ������ �������� � ������ �� ����� ��������, �� ��� ���������� ����� ��������� ������ ������ ������� ���������� SSH. ���������� ������, ������� ��� ���������� ����� ���������, ���� �� �� ����� �������� �������������:<br/><br/><b>ALTER TABLE `" . PREFIX . "_users` CHANGE `foto` `foto` VARCHAR(255) NOT NULL DEFAULT '';</b><br /><br /></div>";

	if ( $error_info ) {

		msgbox("info","����������", "{$error_info}<br />{$sql_info}<br /><br />������� ����� ��� ����������� �������a ���������� �������.");

	} else {

	    msgbox("info","����������", "<br /><br /><div style=\"border: 1px solid #475936; background: #6F8F52; color: #FFFFFF;padding:8px;text-align: justify;\">��� ������� �������� <b>1 MySQL</b> ������.</div><br /><br />{$sql_info}<br /><br />������� ����� ��� ����������� �������a ���������� �������.");

	}

	die();

}

if( $_SESSION['step_update'] == 2 ) {

	$db->query ("ALTER TABLE `" . PREFIX . "_users` CHANGE `foto` `foto` VARCHAR(255) NOT NULL DEFAULT ''");
	
	if ($db->error_count) {
	
		$error_info = "����� ������������� ��������: <b>".$db->query_num."</b> ��������� ��������� ��������: <b>".$db->error_count."</b>. �������� ��� ��� ��������� �����.<br /><br /><div class=\"quote\"><b>������ �� ����������� ��������:</b><br /><br />"; 
	
		foreach ($db->query_list as $value) {
	
			$error_info .= $value['query']."<br /><br />";
	
		}
	
		$error_info .= "</div>";
	
	} else $error_info = "";

	$_SESSION['step_update'] = 3;

	$sql_info = "";

	if ( $error_info ) {

		msgbox("info","����������", "{$error_info}<br />{$sql_info}<br /><br />������� ����� ��� ����������� �������a ���������� �������.");

	} else {

	    msgbox("info","����������", "<div style=\"border: 1px solid #475936; background: #6F8F52; color: #FFFFFF;padding:8px;text-align: justify;\">��� ������� �������� <b>1 MySQL</b> ������.</div><br /><br />{$sql_info}<br /><br />������� ����� ��� ����������� �������a ���������� �������.");

	}

	die();
}

if( $_SESSION['step_update'] == 3 ) {

	$config['version_id'] = "10.5";
	$config['tree_comments'] = "0";
	$config['tree_comments_level'] = "5";
	$config['simple_reply'] = "0";
	$config['recaptcha_theme'] = "light";
	$config['yandex_spam_check'] = "0";
	$config['yandex_api_key'] = "";
	$config['smtp_secure'] = "";
	
	unset($config['mail_additional']);
	unset($config['smtp_helo']);
	unset($config['use_admin_mail']);
	
	$handler = fopen(ENGINE_DIR.'/data/config.php', "w") or die("��������, �� ���������� �������� ���������� � ���� <b>.engine/data/config.php</b>.<br />��������� ������������ �������������� CHMOD!");
	fwrite($handler, "<?PHP \n\n//System Configurations\n\n\$config = array (\n\n");
	foreach($config as $name => $value)
	{
		fwrite($handler, "'{$name}' => \"{$value}\",\n\n");
	}
	fwrite($handler, ");\n\n?>");
	fclose($handler);
	
	$fdir = opendir( ENGINE_DIR . '/cache/system/' );
	while ( $file = readdir( $fdir ) ) {
		if( $file != '.' and $file != '..' and $file != '.htaccess' ) {
			@unlink( ENGINE_DIR . '/cache/system/' . $file );
			
		}
	}
	
	@unlink(ENGINE_DIR.'/data/snap.db');
	
	clear_cache();

	$_SESSION['step_update'] = false;

	msgbox("info","����������", "���������� ���� ������ � ������ <b>10.4</b> �� ������ <b>10.5</b> ������� ���������.<br /><br />������� ����� ��� ����������� �������a ���������� �������.");

}

?>
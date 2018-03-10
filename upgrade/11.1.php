<?php

$config['version_id'] = "11.2";
$config['twofactor_auth'] = '1';
$config['category_newscount'] = '0';

$tableSchema = array();

$tableSchema[] = "DROP TABLE IF EXISTS " . PREFIX . "_twofactor";
$tableSchema[] = "CREATE TABLE " . PREFIX . "_twofactor (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL default '0',
  `pin` varchar(10) NOT NULL default '',
  `attempt` tinyint(1) NOT NULL DEFAULT '0',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pin` (`pin`),
  KEY `date` (`date`)
) ENGINE=" . $storage_engine . " DEFAULT CHARACTER SET " . COLLATE . " COLLATE " . COLLATE . "_general_ci";

$tableSchema[] = "INSERT INTO " . PREFIX . "_email values (9, 'twofactor', '{%username%},\r\n\r\n��� ������ ���������� � ����� {$config['http_home_url']}\r\n\r\n�� �������� ��� ������, ��� ��� ��� ������ �������� �������� ������������� �����������. ��� ����������� �� ����� ��� ���������� ������ ���������� ���� ���-���.\r\n\r\n------------------------------------------------\r\n���-���:\r\n------------------------------------------------\r\n\r\n{%pin%}\r\n\r\n------------------------------------------------\r\n���� �� �� ���������������� �� ����� �����, �� ��� ������ �������� ����������� �����. ��� ����� ��������������� ����� �� ���� ��� ����� ������� � �������, � � ����� ������� �������� ���� ������.\r\n\r\nIP ������������ ������� ���� ������: {%ip%}\r\n\r\n� ���������,\r\n\r\n������������� {$config['http_home_url']}', 0)";

$tableSchema[] = "ALTER TABLE `" . PREFIX . "_usergroups` DROP `allow_lostpassword`";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_banners` ADD `devicelevel` VARCHAR(10) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_files` ADD `size` BIGINT(20) NOT NULL DEFAULT '0' , ADD `checksum` CHAR(32) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_static_files` ADD `size` BIGINT(20) NOT NULL DEFAULT '0' , ADD `checksum` CHAR(32) NOT NULL DEFAULT ''";
$tableSchema[] = "ALTER TABLE `" . PREFIX . "_users` ADD `twofactor_auth` TINYINT(1) NOT NULL DEFAULT '0'";


foreach($tableSchema as $table) {
	$db->query ($table);
}


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

listdir( ENGINE_DIR . '/cache/system/CSS' );
listdir( ENGINE_DIR . '/cache/system/HTML' );
listdir( ENGINE_DIR . '/cache/system/URI' );

clear_cache();

if ($db->error_count) {

	$error_info = "����� ������������� ��������: <b>".$db->query_num."</b> ��������� ��������� ��������: <b>".$db->error_count."</b>. �������� ��� ��� ��������� �����.<br /><br /><div class=\"quote\"><b>������ �� ����������� ��������:</b><br /><br />"; 

	foreach ($db->query_list as $value) {

		$error_info .= $value['query']."<br /><br />";

	}

	$error_info .= "</div>";

} else $error_info = "";

msgbox("info","����������", "���������� ���� ������ � ������ <b>11.1</b> �� ������ <b>11.2</b> ������� ���������.<br /><br />{$error_info}<br />������� ����� ��� ����������� �������a ���������� �������.");

?>
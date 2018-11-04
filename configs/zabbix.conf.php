<?php
// Zabbix GUI configuration file.
global $DB;

$DB['TYPE']     = 'POSTGRESQL';
$DB['SERVER']   = '$PGSQL_HOST';
$DB['PORT']     = '0';
$DB['DATABASE'] = '$PGSQL_BD';
$DB['USER']     = '$PGSQL_USER';
$DB['PASSWORD'] = '$PGSQL_PASS';

// Schema name. Used for IBM DB2 and PostgreSQL.
$DB['SCHEMA'] = '';

$ZBX_SERVER      = '$ZABBIX_HOST';
$ZBX_SERVER_PORT = '10051';
$ZBX_SERVER_NAME = '';

$IMAGE_FORMAT_DEFAULT = IMAGE_FORMAT_PNG;

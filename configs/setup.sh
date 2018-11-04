#!/bin/bash
set -x
sudo sed -i 's/$PGSQL_HOST/'$PGSQL_HOST'/g'                            /etc/zabbix/zabbix_server.conf
sudo sed -i 's/$PGSQL_ZABBIX_BD/'$PGSQL_ZABBIX_BD'/g'                  /etc/zabbix/zabbix_server.conf
sudo sed -i 's/$PGSQL_ZABBIX_USER/'$PGSQL_ZABBIX_USER'/g'              /etc/zabbix/zabbix_server.conf
sudo sed -i 's/$PGSQL_ZABBIX_PASS/'$PGSQL_ZABBIX_PASS'/g'              /etc/zabbix/zabbix_server.conf

# INICIANDO ZABBIX SERVER
$(which service) zabbix-server start

# EXIBINDO OS LOGS DO ZABBIX SERVER
$(which tailf) /var/log/zabbix/zabbix_server.log
set -x

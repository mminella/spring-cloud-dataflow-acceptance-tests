#!/bin/sh


if ! (cf services | grep "^mysql"); then
  cf cs $MYSQL_SERVICE_NAME $MYSQL_PLAN_NAME mysql
fi

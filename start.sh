#!/usr/bin/env bash

BASE=`dirname $0`
export CASSANDRA_HOME=$BASE/apache-cassandra
export CASSANDRA_CONF=$BASE/conf
cd $BASE

$CASSANDRA_HOME/bin/cassandra -f
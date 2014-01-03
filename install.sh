#!/usr/bin/env bash

VERSION=2.0.4
DOWNLOAD=http://apache.mirror.uber.com.au/cassandra/$VERSION/apache-cassandra-$VERSION-bin.tar.gz

mkdir -p var/lib/cassandra &&
	wget --continue $DOWNLOAD &&
		tar xzf apache-cassandra-$VERSION-bin.tar.gz &&
			ln -s apache-cassandra-$VERSION apache-cassandra

Helps you set up a self contained dev cluster of Cassandra. 

- All files are stored in the project directory - so you don't have to contaminate your computer with cassandra files.
- All configuration is local in the conf directory. 
- Downloads and installs Cassandra for you in the project directory.
- At the moment, you can only set up a single node per physical host.

Single node
===========

To start a single node:

	git clone https://github.com/pokle/cassandra-dev-cluster.git
	cd cassandra-dev-cluster
    
    # Download and install Cassandra - only required the first time
	./install.sh

	#
	./start.sh

Connect to it in another terminal:

	cd cassandra-dev-cluster
	./apache-cassandra/bin/cqlsh

A cluster of nodes
=======
A cluster's a little harder to set up because you have to point your nodes at atleast one seed so that they can join the cluster. To do this, after you git clone this project on each node, edit the conf/cassandra.yaml file, and add your seed node(s) to it.

You shouldn't need to edit the listen_address because the configuration leaves it blank - meaning just use the hostname. If your nodes don't have hostnames configured correctly, you'll have to set this.

See http://www.datastax.com/documentation/cassandra/1.2/webhelp/cassandra/initialize/initializeMultipleDS.html for further information.

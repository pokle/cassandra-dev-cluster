Helps you set up a self contained dev cluster of Cassandra. 

- All files are stored in the project directory - so you don't have to contaminate your computer with cassandra files.
- All configuration is local in the conf directory. 
- Downloads and installs Cassandra for you in the project directory.

To start a single node:

	git clone https://github.com/pokle/cassandra-dev-cluster.git
	cd cassandra-dev-cluster
	./install.sh
	./start.sh

Connect to it in another terminal:

	cd cassandra-dev-cluster
	./apache-cassandra/bin/cqlsh


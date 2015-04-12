Vagrant Consul
==============

Scripts to quickly spin up a dual node [Consul](https://www.consul.io/) cluster for development using Vagrant.

  **Note:** Initial code borrowed from: [https://github.com/hashicorp/consul/tree/master/demo/vagrant-cluster](https://github.com/hashicorp/consul/tree/master/demo/vagrant-cluster)

To get started from a terminal:

```
$ git clone https://github.com/chadlung/vagrant-consul.git
$ cd vagrant-consul
$ vagrant up
```

Once the two VMs are up and running you can log into **consul-node1** by running:

```
$ vagrant ssh consul-node1
```

Now that your on **consul-node1** run this command to start Consul:

```
$ consul agent -server -bootstrap-expect 1 -data-dir /tmp/consul -ui-dir /usr/share/consul/ui -client 0.0.0.0 -node=consul-agent1 -bind=192.168.33.10 &
```

In another terminal window (or tab) log into **consul-node2** by running:

```
$ vagrant ssh consul-node2
```

Now that your on the **consul-node2** run this command to start Consul:

```
$ consul agent -data-dir /tmp/consul -node=consul-agent2 -bind=192.168.33.11 &
```

To join the cluster from  **consul-node2** run:

```
$ consul join 192.168.33.10
```

To verify the cluster members by running (on either VM):

```
$ consul members
```

To shutdown Consul run (on each VM):

```
$ consul leave
```

The two Consul VMs will be running with IPs: `192.168.33.10` and `192.168.33.11`.

The WebUI will be available at: [http://192.168.33.10:8500/ui](http://192.168.33.10:8500/ui)

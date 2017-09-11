#!/bin/bash
DEVICE_DESCR=$1
GRAPH_DESCR=$2
DEVICE_ID=` #scriptlet to retrieve numeric device ID`
GRAPH_ID=`  #scriptlet to retrieve numeric graph ID`
GRAPH_TYPE=`#scriptlet to determine the graph type`
/usr/share/cacti/cli/add_graphs.php \
  --graph-type=$GRAPH_TYPE \
  --graph-template-id=$GRAPH_ID \
  --host-id=$DEVICE_ID


#!/bin/sh

# HTTP endpoint of Unisphere
export X_CSI_POWERMAX_ENDPOINT="https://10.247.73.217:8443"

# EnvUser is the name of the enviroment variable used to set the
# username when authenticating to Unisphere
export X_CSI_POWERMAX_USER="username"

# EnvPassword is the name of the enviroment variable used to set the
# user's password when authenticating to Unisphere
export X_CSI_POWERMAX_PASSWORD="password"

# EnvInsecure is the name of the enviroment variable used to specify
# that Unisphere's certificate chain and host name should not
# be verified
export X_CSI_POWERMAX_INSECURE="true"

# EnvNodeName is the name of the enviroment variable used to set the
# hostname where the node service is running
export X_CSI_POWERMAX_NODENAME=`hostname`

# EnvClusterPrefix is the name of the environment variable that is used
# to specify as a prefix to apply to objects created via this K8s cluster
export X_CSI_K8S_CLUSTER_PREFIX="XYZ"

# EnvAutoProbe is the name of the environment variable used to specify
# that the controller service should automatically probe itself if it
# receives incoming requests before having been probed, in direct
# violation of the CSI spec
export X_CSI_POWERMAX_AUTOPROBE="true"

# EnvPortGroups is the name of the environment variable that is used
# to specify a list of Port Groups that the driver can choose from
# These Port Groups must exist and be populated
export X_CSI_POWERMAX_PORTGROUPS="iscsi_ports"

# EnvArrayWhitelist is the name of the environment variable that is used
# to specifiy a list of Arrays the the driver can choose from.
# An empty list will allow all arrays known to Unisphere to be used.
export X_CSI_POWERMAX_ARRAYS=""

# Enable/Disable CSI request and response logging
# setting them to true sets X_CSI_REQ_ID_INJECTION to true 
export X_CSI_REQ_LOGGING="true"
export X_CSI_REP_LOGGING="true"

# Variables for the integration test code.
export CSI_ENDPOINT=`pwd`/unix_sock
export SYMID="000197900046"
export SRPID="SRP_1"
export SERVICELEVEL="Bronze"

set -o errexit

current_dir=`dirname $0`
if [[ $current_dir = '.' ]]; then
	   current_dir=$PWD;
fi

# source ${current_dir}/config
config_file=${current_dir}/../config/config

echo config_file $config_file

# cat $config_file

source $config_file

# exit

echo "about to create cluster ..."


echo "gcloud container --project ${PROJECT_ID} clusters create ${GKE_CLUSTER} --zone ${GKE_ZONE} --machine-type ${MACHINE_TYPE} --num-nodes ${NUM_NODES} --network 'default'"
      time gcloud container --project ${PROJECT_ID} clusters create ${GKE_CLUSTER} --zone ${GKE_ZONE} --machine-type ${MACHINE_TYPE} --num-nodes ${NUM_NODES} --network 'default'


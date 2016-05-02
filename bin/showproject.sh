
set -o errexit

current_dir=`dirname $0`
if [[ $current_dir = '.' ]]; then
	   current_dir=$PWD;
fi

config_file=${current_dir}/../config/config

echo config_file $config_file

# cat $config_file

source $config_file


echo PROJECT_ID $PROJECT_ID
echo GKE_CLUSTER $GKE_CLUSTER

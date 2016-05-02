
set -o errexit

current_dir=`dirname $0`
if [[ $current_dir = '.' ]]; then
	   current_dir=$PWD;
fi

config_file=${current_dir}/../config/config

source $config_file

echo "PROJECT_ID $PROJECT_ID  ................... "

# run loadDb command from inside web nodejs container to seed with orgs + users + ...

echo "kubectl get pods"
      kubectl get pods

# retrieve container name for nodejs

# populate env var with container name

# echo "kubectl logs curr_web_controller"
#       kubectl logs ${curr_web_controller}

# run   kubectl  with flag    --validate


echo "view External IP in output of following command"
echo "gcloud compute --project ${PROJECT_ID} forwarding-rules list"
      gcloud compute --project ${PROJECT_ID} forwarding-rules list


echo "kubectl describe service web"
      kubectl describe service web


echo "kubectl describe service nginx"
      kubectl describe service nginx


echo column IP_ADDRESS of above command is External IP address to reach app point browser there

echo "run below command after a few seconds ... repeat until it says Status Ready"

echo "kubectl get pods"
      kubectl get pods













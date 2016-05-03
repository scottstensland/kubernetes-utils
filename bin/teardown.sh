
current_dir=`dirname $0`
if [[ $current_dir = '.' ]]; then
       current_dir=$PWD;
fi

config_file=${current_dir}/../config/config

echo config_file $config_file

ls -la $config_file

source ${config_file}


echo PROJECT_ID is $PROJECT_ID


echo "gcloud --project ${PROJECT_ID} compute forwarding-rules list"
      gcloud --project ${PROJECT_ID} compute forwarding-rules list


# show cluster processes

echo "kubectl get services"
      kubectl get services

# delete services running on cluster

echo "https://stackoverflow.com/questions/33509194/command-to-delete-all-pods-in-all-kubernetes-namespaces"
echo "time kubectl delete services kubernetes  mongo  web nginx"
      time kubectl delete services kubernetes  mongo  web nginx

echo GKE_CLUSTER $GKE_CLUSTER

# destroy running cluster

echo "time gcloud --quiet container --project ${PROJECT_ID} clusters delete ${GKE_CLUSTER}"
      time gcloud --quiet container --project ${PROJECT_ID} clusters delete ${GKE_CLUSTER}



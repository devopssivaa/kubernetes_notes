kops get cluster
kops edit cluster ullagallu.xyz
kops edit ig --name=ullagallu.xyz nodes-ap-south-1a
kops edit ig --name=ullagallu.xyz master-ap-south-1a
kops update cluster --name ullagallu.xyz --yes --admin
kops delete cluster --name ullagallu.xyz --yes
export KOPS_STATE_STORE=s3://ullagallu.xyz
kops validate cluster --wait 10m
kubectl get nodes --show-labels
ssh -i ~/.ssh/id_rsa ubuntu@api.ullagallu.xyz


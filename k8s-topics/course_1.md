### kubernetes fundamentals- basic ###
what is container ?
what is container orchestrator ?
Dockerfile
    multi-stage build
what is k8s ?
pods,deployments,replicaset,services,daemonset,namespaces,popular kubectl commnads
### kubernetes fundamentals- advanced ###
Ingress,service vs ingress
Scaling
   metric-server
   horizontal pod auto-scalar(HPA)
   cluster autos-caler(CA)
   vertical pod auto-scaler(VPA)
   overprovisioner
   custome-metrics(keda)
Scheduling
    nodeaffinity&anti-affinity
    taints and toleratations
Availability
    Liveness,Rediness and Startup probes
Cost-optimization
    kubecost
Statefulsets
EKS
    managed nodes groups
    fargate
    karpentar
### kubernetes observability ###
Logs
  controlplaine logs
  container logs
     fluentbit,fluentd
     container insights
metrics
   control plaine metrics
   data plaine metrics
       prometheus & graffana
       container insights
### kubernetes security ###
Role Based Access Control and Role Binding
Cluster Based Access Control and Control Role Binding
Service Account
kubeconfig,Configmap,Secrets
How different applications and users can have different access AWS?
How to authencation and authorization with API Gateway and Ingress
Open Policy Agent(OPA)
Security Best Practices
   Infrastructure level
   image level
   Pod level
   network level and incident response
   Tools to probing errors used
      kube-bench,sysdig/twistlock,inspector(if AWS)
If using Amazon EKS
   IAM role for service Account(IRSA)
   Pod security group
   aws-iam-authenticator
### kubernetes networking ###
How IP addresses are allocated
What happens if IP addresses are running out,how to add more IP addresse to the cluster
CNI plugins
   AWS VPC CNI (If EKS)
Network Policy
   calico
IPV6
  why ipv6
  How does it work with ipv4
  How is it different than adding secondary subnet in ipv4
Core DNS
Ingress
what is kubernetes private cluster(public,public+private,private)
### Managed kubernetes service from cloud provider ###
Advantages of managed k8s service
    Managed control plaine 
    Integration with other cloud serivce like
     Storage,step-functions(work-flow),Security IAM
For EKS
  Managed node group,spot,VPC-CNI,managed addons,IPV6 support,prefix support,AWS controller,container insights,managed prometheus and graffana,secure ami,free ECR
  scanning,eksctl etc..
  EBS,EFS,FSx integration,step-function,IAM,Inspector&Security HUB
### kubernetes Devops-flow ###
devops flow to deploy into k8s
container repo 
   ECR
GitOps
  AgroCD
Implementing into a cluster using one Devops tool
   Jenkins
   Jenkins+GitOps
Blue-Green and Canary Deployment(Istio or Service Mesh)
### Service Mesh And API gateway ###
service mesh architecture
service mesh benefits
   Encryption
How to throttle,circuit break, retry
Service mesh auth with third party
Scale using service mesh metrics(keda)
Blue-Green,Canary Deployment(Serivce mesh)
Service Mesh Products(ISTIO,APP MESH)
Seperate service to k8s
API gateway running on k8s
### Admin ###
How to patching
Hardening AMI
upgrading k8s without downtime
deploying application witout downtime
backup k8s cluster
    Running out of IP's
    private cluster errors
    AZ goes down
    
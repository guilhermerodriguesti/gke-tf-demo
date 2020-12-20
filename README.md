# gke-tf-demo
Demo repo for my Medium posts on IaC, GKE, Helm &amp; Jenkins

Follow along here:

https://medium.com/@timhberry/infrastructure-as-code-but-why-ab13951fb8d4

https://medium.com/@timhberry/learn-terraform-by-deploying-a-google-kubernetes-engine-cluster-a29071d9a6c2

https://medium.com/@timhberry/deploy-jenkins-to-google-kubernetes-engine-with-helm-60e0a4d7de93

https://medium.com/@timhberry/terraform-pipelines-in-jenkins-47267129ff06

# On google console
```
gsutil mb -c regional -l europe-west1 gs://terraform-gr-tfstate
```

# On your machine
```
cat creds/serviceaccount.json | base64 -w0
```

# On your GitLAB navigate to 
```
Settings > CI/CD 
```
and expand the Variables section. 
We will create a SERVICEACCOUNT variable to match our pipeline configuration. 
The value of this variable must be a string, so we will encode our service account file:

```
cat creds/serviceaccount.json | base64 -w0
```

# On your google Cloud
gcloud container clusters get-credentials gr-gke-cluster --zone us-west1-a --project playground-s-11-0ed5fe29
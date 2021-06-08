# Jenkins instance setup via Terraform

Creates a Jenkins EC2 instance using Terraform IaC.

## Setup

Step 1: Create a key pair via command line or in AWS. If on mac, make sure it's saved in ssh folder at root. If not, then
you may need to mv the file from downloads to root. 

```
mv ~/Downloads/jenkins-key.pem ~/.ssh
```

You may need to also change permissions to the file also

```
ls -l ~/.ssh/jenkins-key.pem
```

```
chmod 600 ~/.ssh/jenkins-key.pem
```

Verify that the permissions changed

```
ls -l ~/.ssh/jenkins-key.pem
```

Step 2: Change the tfvars as needed 

`https://github.com/jonathanlandGit/aws-ecs-fargate-tf.git`

Step 3: Initialize and deploy the infrastructure 

```
terraform init 
```
```
terraform apply 
```

Step 3: The final output will be the jenkins-ip-address. Just add 8080 to whatever address is given (make sure instance is fully up and running before visiting the site)

```
e.g., ec2-35-170-62-125.compute-1.amazonaws.com:8080
```

You can also look in ec2 and get teh public ip and use that as well (format will look like this)

```
e.g., 35.170.62.125:8080
```

Step 4: If Jenkins is up and running you now need to enter your admin password located at /var/lib/jenkins/secrets/initialAdminPassword. You can get this different ways. One way is just to click on your instance and then click "connect" and then when Linux2 cl opens type the following, which will output the password:

```
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

Step 5: After you enter password, you should be able to sign in and install plugins, etc.


Step 6: When your done destroy resources from Infrastructure folder
```
terraform destroy 
```

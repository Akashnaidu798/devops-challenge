Infrastructure Coding Test

**Steps required to create the server**

**Using Terraform**

Follow below commands to install terraform in ec2 instance

sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

sudo yum -y install terraform

once installed copy the file ec2-create.tf in a directory and execute below command to initialize terraform

_"terraform init"_

then plan and apply the terraform config use below commands
_"terraform plan"_
_"terraform apply"_

once above commands are executed a new instance will be created.

**Using Console**

1) In the search services bar type EC2. then in EC2 Dashboard select Instances. Click Launch Instances
2) Select AMI(in our case Amazon linux image)
3) Choose Instance type (t2.micro)
4) select needed configuration in the configure instance details tab
5) select add storage and choose required storage
6) select Add Tags and create tags specific to the instance
7) Configure security group to add rules to access the instance(ports and ipranges)
8) finally click on review and launch
9) review the selected configurations and click on Launch
10) Now, select the key_pair if we have one already or create a new key pair and provide a name to it and download the same.

**Installing NGINX in the instance**

use below command to install nginx in the instance

"_amazon-linux-extras install nginx1 -y_"

Now start the nginx server using below command

_"systemctl start nginx"_

check the status of the nginx server using below command

_systemctl status nginx_

then create a file version.txt in the location /usr/share/nginx/html/ with the static content "1.0.6"

Now try accessing the nginx server with below url

_http://ipaddress/version.txt_

Use statusChecker.sh(added in the repo)script to check the status of application which also runs on cron(every 1 minute) and posts the status in a file status.txt



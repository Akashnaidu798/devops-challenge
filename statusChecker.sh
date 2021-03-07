#/bin/bash
if curl -s --head --request GET http://nginxversioncheck-409897852.us-east-2.elb.amazonaws.com/version.txt | grep "200 OK" > /dev/null; then
if curl -s GET http://nginxversioncheck-409897852.us-east-2.elb.amazonaws.com/version.txt | grep "1.0.6" > /dev/null; then
   echo "Webpage is UP and serving the content 1.0.6 on "`date` > /home/ec2-user/status.txt
else
echo "Webpage is UP and not serving the content 1.0.6 on "`date` > /home/ec2-user/status.txt
fi
else
echo "Webpage is DOWN on  " `date` > /home/ec2-user/status.txt
fi

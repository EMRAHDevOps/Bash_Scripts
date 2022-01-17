echo "Welcome to automated installation"

packs=("jenkins" "ansible")
select file in "${packs[@]}";
do
    case $file in 
     "jenkins")
       sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install epel-release -y
sudo yum install jenkins java-1.8.0-openjdk-devel -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo yum install git -y
;;
"ansible") 
    yum install epel-release -y
    yum install git -y
    yum install ansible -y
;;
"quit")
echo "user requested exit"
exit
;;
*) echo "invalid option"
;;
esac
done
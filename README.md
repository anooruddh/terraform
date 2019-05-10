Steps to provision
Download the terraform binary file https://www.terraform.io/downloads.html
If MAC users have homebrew installed on their machine: Just do: brew install terraform Go to step 5

wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip

install zip/unzip
sudo apt-get install unzip 

( sudo yum install unzip - on linux) on ubuntu

sudo unzip terraform_0.11.13_linux_amd64.zip

this will create a directory called terraform

Extract the zip file
You will see the terraform binary executable file
make sure that the terraform binary is available on the PATH.
For Mac/Linux. On the shell/terminal, go to the folder where terraform binary is extracted

echo $"export PATH=\$PATH:$(pwd)" >> ~/.bash_profile

source ~/.bash_profile

terraform -version

mkdir ec2_create

cd ec2_create

copy your .tf file here and run

terraform plan

terraform apply

terraform destory -- in case you want to delete your ec2 instance


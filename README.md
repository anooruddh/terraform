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

or 

unzip terraform_0.11.13_linux_amd64.zip

this will unzip file in same directory with the name terraform

now, move this 'terraform' to /usr/bin

test, run terraform command, should show help like below

ubuntu@xxxx:~$ sudo terraform
Usage: terraform [-version] [-help] <command> [args]

The available commands for execution are listed below.
The most common, useful commands are shown first, followed by
less common or more advanced commands. If you're just getting
started with Terraform, stick with the common commands. For the
other commands, please read the help and docs before usage.

Common commands:
    apply              Builds or changes infrastructure
    console            Interactive console for Terraform interpolations
    destroy            Destroy Terraform-managed infrastructure
    env                Workspace management
    fmt                Rewrites config files to canonical format
    get                Download and install modules for the configuration
    graph              Create a visual graph of Terraform resources
    import             Import existing infrastructure into Terraform
    init               Initialize a Terraform working directory
    output             Read an output from a state file
    plan               Generate and show an execution plan
    providers          Prints a tree of the providers used in the configuration
    push               Upload this Terraform module to Atlas to run
    refresh            Update local state file against real resources
    show               Inspect Terraform state or plan
    taint              Manually mark a resource for recreation
    untaint            Manually unmark a resource as tainted
    validate           Validates the Terraform files
    version            Prints the Terraform version
    workspace          Workspace management

All other commands:
    debug              Debug output management (experimental)
    force-unlock       Manually unlock the terraform state
    state              Advanced state management
ubuntu@xxxxx:~$



mkdir ec2_create

cd ec2_create

copy your .tf file here and run

terraform plan

terraform apply

terraform destory -- in case you want to delete your ec2 instance


# curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
# unzip awscliv2.zip
# sudo ./aws/install

# sudo apt install jq

# sudo apt install tree

# #https://learn.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.4
# ###################################
# # Prerequisites

# # Update the list of packages
# sudo apt-get update

# # Install pre-requisite packages.
# sudo apt-get install -y wget apt-transport-https software-properties-common

# # Get the version of Ubuntu
# source /etc/os-release

# # Download the Microsoft repository keys
# wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb

# # Register the Microsoft repository keys
# sudo dpkg -i packages-microsoft-prod.deb

# # Delete the Microsoft repository keys file
# rm packages-microsoft-prod.deb

# # Update the list of packages after we added packages.microsoft.com
# sudo apt-get update

# ###################################
# # Install PowerShell
# sudo apt-get install -y powershell

# # Start PowerShell
# pwsh


# Terraform
# https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
# sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

# wget -O- https://apt.releases.hashicorp.com/gpg | \
# gpg --dearmor | \
# sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

# gpg --no-default-keyring \
# --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
# --fingerprint

# echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
# https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
# sudo tee /etc/apt/sources.list.d/hashicorp.list

# sudo apt update
# sudo apt-get install terraform

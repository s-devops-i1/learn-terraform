env=$1
action=$2
if [ -z $env ]; then
  echo "Missing env(dev/prod) input"
  exit 1
fi
if [ -z $action ]; then
  echo "Missing action(apply/destroy) input"
  exit 1
fi
rm -rf .terraform/terraform.tfstate
terraform init -backend-config=env-${env}/state.tfvars
terraform $action -var-file=env-${env}/main.tfvars

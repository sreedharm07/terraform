default:
	echo none
devd:
	rm -rf .terraform
	terraform init -backend=env-dev/state.tfvars
	terraform apply -auto-approve -var-file=env-dev/var.tfvars
destroyd:
	terraform init
	terraform destroy -auto-approve -var-file=dev/var.tfvars
prodp:
	rm -rf .terraform
	terraform init -backend-config=prod/state.tfvars
	terraform apply -auto-approve -var-file=prod/var.tfvars
destroyp:
	terraform destroy -auto-approve -var-file=prod/var.tfvars
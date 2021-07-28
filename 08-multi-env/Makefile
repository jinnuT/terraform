help:      					  ## Print Help Message
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

clean:
	@rm -rf .terraform*

dev-apply: 				clean ## Install Frontend Component
	@terrafrom init -backend-config=env/dev-backend.tfvars -no-color
	@terrafrom apply -auto-approve -var-file=env/dev.tfvars -no-color

prod-apply: 			clean ## Install Frontend Component
	@terrafrom init -backend-config=env/prod-backend.tfvars -no-color
	@terrafrom apply -auto-approve -var-file=env/prod.tfvars -no-color

dev-destroy: 			clean ## Install Frontend Component
	@terrafrom init -backend-config=env/dev-backend.tfvars -no-color
	@terrafrom destroy -auto-approve -var-file=env/dev.tfvars -no-color

prod-destroy: 			clean ## Install Frontend Component
	@terrafrom init -backend-config=env/prod-backend.tfvars -no-color
	@terrafrom destroy -auto-approve -var-file=env/prod.tfvars -no-color
	
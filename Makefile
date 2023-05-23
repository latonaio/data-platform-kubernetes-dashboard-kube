test-arg:
	@echo $(ipv4Address)
	@echo $(portNumber)

generate:
	bash generateYaml.sh $(ipv4Address) $(portNumber)

proxy-start:
	kubectl proxy --address='0.0.0.0' --accept-hosts='^*$' -n kubernetes-dashboard

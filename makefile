build:
	@docker-compose -p jenkins build nginx data master slave
run:
	@docker-compose -p jenkins up -d nginx data master
stop:
	@docker-compose -p jenkins stop
clean:	stop
	@docker-compose -p jenkins rm master nginx #registry
clean-data: clean
	@docker-compose -p jenkins rm -v data
clean-images:
	@docker rmi 'docker images -q -f "dangling=true"'

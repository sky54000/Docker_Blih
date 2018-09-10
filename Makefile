BUILD=build
DC=docker-compose
DOWN=down
UP=up -d
RM=rm -rf
PASSWORD = $(shell bash -c 'read -s -p "Set your Epitech password: " pwd; echo $$pwd')
FILE ='docker-compose.yml'

all: down_build_up

build:
	make set_password
	$(DC) $(BUILD) create-repository

up:
	$(DC) $(UP) create-repository
	make reset_password

down:
	$(DC) $(DOWN)

# Clone repo
clone: down build_clone up_clone
build_clone:
	make set_password
	$(DC) $(BUILD) clone

up_clone:
	$(DC) $(UP) clone
	make reset_password

# Push repo
push: down build_push up_push
build_push:
	make set_password
	$(DC) $(BUILD) push

up_push:
	$(DC) $(UP) push
	make reset_password

# Utils rules
delete_key:
	make set_password
	$(DC) $(BUILD) delete_key
	$(DC) $(UP) delete_key
	make reset_password

ps:
	$(DC) ps

logs:
ifndef service
	$(DC) logs -f
else
	$(DC) logs -f $(service)
endif

set_password:
	@sed -ie "s~\(EPITECH_PASSWORD: \)\(.*\)~\1'${PASSWORD}'~" $(FILE)

reset_password:
	@sed -ie "s~\(EPITECH_PASSWORD: \)\(.*\)~\1'password'~"  $(FILE)
	@$(RM) docker-compose.ymle

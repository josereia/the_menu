icons:
	@echo "Gerando launcher icons"
	@flutter pub run flutter_launcher_icons

splash:
	@echo "Gerando splash screen"
	@dart run flutter_native_splash:create  

update:
	@echo "Atualizando o projeto"
	@git pull
	@flutter pub get

upgrade:
	@echo "Atualizando o projeto"
	@flutter clean
	@flutter pub get
	@flutter pub upgrade
	@flutter pub upgrade --major-versions

clean:
	@echo "Cleaning project"
	@flutter clean
	@flutter pub get 

.PHONY: icons splash update upgrade clean

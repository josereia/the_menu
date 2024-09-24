.PHONY: update upgrade clean

update:
	@echo "Updating project"
	@git pull
	@flutter pub get

upgrade:
	@echo "Upgrading project"
	@flutter clean
	@flutter pub get
	@flutter pub upgrade
	@flutter pub upgrade --major-versions

clean:
	@echo "Cleaning project"
	@flutter clean
	@flutter pub get 

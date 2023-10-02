FVM = fvm flutter

.PHONY: setup
setup:
	flutter clean
	make builder

.PHONY: pub_get
pub_get:
	flutter pub get

.PHONY: pub_upgrade
pub_upgrade:
	flutter pub upgrade

.PHONY: builder
builder:
	make pub_get
	dart run build_runner clean
	dart run build_runner build --delete-conflicting-outputs

.PHONY: watch
watch:
	make pub_get
	dart run build_runner watch

.PHONY: clean
clean:
	flutter clean
	make pub_get
	make clean_pod

.PHONY: clean_pod
clean_pod:
	rm -Rf ios/Podfile.lock
	rm -Rf ios/Pods
	rm -Rf ios/.symlinks
	rm -Rf ios/Flutter/Flutter.podspec
	pod install --repo-update

.PHONY: format
format:
	dart fix --apply
	flutter pub run import_sorter:main
	dart format lib/* test/*
	flutter analyze
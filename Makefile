build_runner:
	dart run build_runner build --delete-conflicting-outputs

clean:
	flutter clean

run:
	flutter run

run_tests:
	flutter test

open_simulator:
	open -a Simulator

setup:
	flutter pub get

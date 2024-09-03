setup:
	@flutter pub get && \
	$(MAKE) build_runner

build_runner:
	@dart run build_runner build --delete-conflicting-outputs

build_runner_watch:
	@dart run build_runner watch --delete-conflicting-outputs

build_runner_clean:
	@dart run build_runner clean

test-unit:
	@flutter test

test-coverage:
	@flutter test --coverage && lcov --remove coverage/lcov.info '**/*.g.dart' '**/env.dart' -o coverage/lcov.info && genhtml coverage/lcov.info --output=coverage && open coverage/index.html

clean:
	@rm -rf pubspec.lock
	@flutter clean

format:
	@dart format .

lint:
	@dart analyze .


localisation:
	@flutter pub run easy_localization:generate -S assets/translations -O lib/core/lang -o app_localization.dart
	@flutter pub run easy_localization:generate -S assets/translations -O lib/core/lang -f keys -o locale_keys.g.dart $(c)

ffi_gen:
	@echo "* ffi generation *"
	@dart run ffigen

proto_gen:
	@echo "* Generating Dart protobuf files *"
	@mkdir -p lib/generated_protos
	@protoc -I=gen/proto \--dart_out=lib/generated_protos \gen/proto/*.proto

in:
	@echo "* Getting latest dependencies *"
	flutter pub get
	@echo "* Running build runner *"
	dart run build_runner build --delete-conflicting-outputs

g:
	@echo "* Starting code generation... *"
	dart run build_runner build --delete-conflicting-outputs
	@echo "* Code generation successfull *"
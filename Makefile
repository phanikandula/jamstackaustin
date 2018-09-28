serve:
	hugo server --baseUrl=127.0.0.1 --bind=0.0.0.0
build:
	rm -rf public
	hugo

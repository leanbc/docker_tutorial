CURRENT_DIR_NAME:=`pwd | xargs basename`
# INTERPRETER_IMAGE_ID=python:3.9.6-slim-buster
INTERPRETER_IMAGE_ID=python:3.8.11-slim-buster
python9:
	( \
	docker run -i -w /$(CURRENT_DIR_NAME) \
	-v `pwd`:/$(CURRENT_DIR_NAME) \
	$(INTERPRETER_IMAGE_ID) \
	/bin/bash -c "python say_hi.py"; \
	)
#!/bin/bash

pipenv install -r requirements.txt
python -m nltk.downloader punkt
spacy download en_core_web_lg

# only install test requirements if explicitly specified
if [[ "$INSTALL_TEST_REQUIREMENTS" == "true" ]]; then
    pip install -r requirements_test.txt
fi

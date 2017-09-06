FROM python:2.7
WORKDIR perfkit
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
# COPY requirements-testing.txt ./requirements-testing.txt
# RUN pip install -r requirements-testing.txt
COPY hooks ./hooks
COPY MANIFEST.in ./MANIFEST.in
COPY perfkitbenchmarker ./perfkitbenchmarker
COPY pkb.py ./pkb.py
COPY script-tests ./script-tests
COPY setup.cfg ./setup.cfg
COPY setup.py ./setup.py
COPY tests ./tests
COPY tools ./tools
COPY tox.ini ./tox.ini
COPY config.yaml ./config.yaml
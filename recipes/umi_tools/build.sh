#!/bin/bash

sed -i -e 's/=install_requires,/#/g' -e 's/install_requires#/#/g' setup.py
${PYTHON} setup.py install

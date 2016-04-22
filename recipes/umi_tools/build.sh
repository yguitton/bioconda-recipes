#!/bin/bash

sh -c 'sed -e "s/=install_requires,/#/g" -e "s/install_requires#/#/g" -i setup.py'

${PYTHON} setup.py install

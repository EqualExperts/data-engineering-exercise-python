#!/bin/bash

set -euo pipefail

OUTPUT_DIR=uncommitted
mkdir -p ${OUTPUT_DIR}

OUTPUT_PATH=${OUTPUT_DIR}/dataset.tar.gz


if [ ! -f ${OUTPUT_PATH} ]; then
  curl -L -o ${OUTPUT_PATH} "https://drive.google.com/uc?export=download&id=1OwKgt7fA5n75WTYCwM2LfexEX7OzFIsk"
fi

tar -xf  ${OUTPUT_PATH} -C ${OUTPUT_DIR}

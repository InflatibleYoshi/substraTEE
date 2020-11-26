#!/bin/bash

# Copyright 2020 Supercomputing Systems AG
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Set the correct version numbers
export VERSION_UBUNTU=1804
export VERSION_RUST_SGX_SDK=1.1.3
export VERSION_INTEL_SGX_SDK=2.12
export VERSION_IPFS=0.4.21

set -ex

# Build the docker image
docker build --target development \
    --build-arg VERSION_UBUNTU=$VERSION_UBUNTU \
    --build-arg VERSION_RUST_SGX_SDK=$VERSION_RUST_SGX_SDK \
    --build-arg VERSION_IPFS=$VERSION_IPFS \
    -t scssubstratee/substratee_dev:$VERSION_UBUNTU-$VERSION_INTEL_SGX_SDK-$VERSION_RUST_SGX_SDK \
    -f ./Dockerfile .

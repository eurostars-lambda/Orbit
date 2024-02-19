#!/bin/bash

docker run --name orbit_oo --entrypoint bash -it --gpus all -e "ACCEPT_EULA=Y" --rm --network=host \
		-v ~/docker/orbit_oo/cache/kit:/isaac-sim/kit/cache/Kit:rw \
    	-v ~/docker/orbit_oo/cache/ov:/root/.cache/ov:rw \
    	-v ~/docker/orbit_oo/cache/pip:/root/.cache/pip:rw \
    	-v ~/docker/orbit_oo/cache/glcache:/root/.cache/nvidia/GLCache:rw \
    	-v ~/docker/orbit_oo/cache/computecache:/root/.nv/ComputeCache:rw \
    	-v ~/docker/orbit_oo/logs:/root/.nvidia-omniverse/logs:rw \
    	-v ~/docker/orbit_oo/data:/root/.local/share/ov/data:rw \
    	-v ~/docker/orbit_oo/documents:/root/Documents:rw \
		-v ~/docker/orbit_oo/.nvidia-omniverse:/root/.nvidia-omniverse:rw \
		-v ~/docker/orbit_oo/.vscode-server/:/root/.vscode-server/:rw \
		-v ~/documents_oo/:/docs/:rw \
		-v ~/documents_oo/lambda-robots/src/__init__.py:/workspace/orbit/source/extensions/omni.isaac.orbit_assets/omni/isaac/orbit_assets/__init__.py:rw \
		-v ~/documents_oo/lambda-robots/src/kinova/kinova.py:/workspace/orbit/source/extensions/omni.isaac.orbit_assets/omni/isaac/orbit_assets/kinova.py:rw \
		-v ~/documents_oo/lambda-gym/src/contrib_tasks/:/workspace/orbit/source/extensions/omni.isaac.contrib_tasks/omni/isaac/contrib_tasks/:rw \
		-v ~/documents_oo/lambda-rl/:/workspace/orbit/source/standalone/sbtc-rl/:rw \
		orbit_sbtc_v0.2.0

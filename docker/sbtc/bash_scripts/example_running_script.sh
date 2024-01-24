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
		-v ~/documents_oo/:/docs/:rw \
		orbit_sbtc_v0.2.0

		#-v ~/documents_oo/sbtc-robots/src/omni.isaac.doosan/:/isaac-sim/exts/omni.isaac.doosan/:rw \

# NAME: dclong/jupyterhub-cuda_b
FROM dclong/jupyterhub-cuda
# GIT: https://github.com/dclong/docker-jupyterhub-cuda.git

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libcurand-11-0 libcublas-11-0 libcusolver-11-0 libnvtoolsext1 libcufft-11-0 libnvrtc10.1 
        
RUN pip3 install --no-cache-dir \
        numpy pandas pyarrow>=0.14.0 scikit-learn lightgbm

# NAME: dclong/jupyterhub-cuda_b
FROM dclong/jupyterhub-cuda
# GIT: https://github.com/dclong/docker-jupyterhub-cuda.git

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libcurand10 libcublas10 libcusolver10 libnvtoolsext1 libcufft10 libnvrtc10.1 
        
RUN pip3 install --no-cache-dir \
        numpy pandas pyarrow scikit-learn lightgbm

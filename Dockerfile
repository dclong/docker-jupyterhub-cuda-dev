# NAME: dclong/jupyterhub-cuda_b
FROM dclong/jupyterhub-cuda
# GIT: https://github.com/dclong/docker-jupyterhub-cuda.git

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        cuda-libraries-11-1=11.1.1-1 \
        libnpp-11-1=11.1.2.301-1 \
        cuda-nvtx-11-1=11.1.74-1 \
        libcusparse-11-1=11.3.0.10-1 \
        libcublas-11-1=11.3.0.106-1 \
        libnccl2=2.8.4-1+cuda11.1 \
        # libcurand10 
        # libcusolver10 
        # libnvtoolsext1 
        # libcufft10 
        # libnvrtc10.1 
    # Keep apt from auto upgrading packages cublas and nccl. 
    # See https://gitlab.com/nvidia/container-images/cuda/-/issues/88
    && apt-mark hold libcublas-11-1 libnccl2 \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*
        
RUN pip3 install \
        numpy pandas pyarrow scikit-learn lightgbm
    && pip3 cache purge

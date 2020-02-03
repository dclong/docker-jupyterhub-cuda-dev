FROM dclong/jupyterhub-cuda

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libcurand10 libcublas10 libcusolver10 libnvtoolsext1 libcufft10 libnvrtc10.1 
        
RUN pip3 install --no-cache-dir \
        numpy scikit-learn lightgbm

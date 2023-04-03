FROM nvcr.io/nvidia/l4t-ml:r35.1.0-py3

RUN apt install -y nano net-tools
ARG TEMP=/temp
WORKDIR $TEMP
ARG ZED_SDK=zed_sdk.run
RUN wget https://download.stereolabs.com/zedsdk/4.0/l4t35.1/jetsons -O $ZED_SDK
RUN chmod +x $ZED_SDK
RUN $ZED_SDK
RUN rm -rf $TEMP
RUN python3 -m pip install cython numpy
RUN python3 -m pip install opencv-python pyopengl
WORKDIR /usr/local/zed/
RUN python3 get_python_api.py
CMD ["/bin/bash"]



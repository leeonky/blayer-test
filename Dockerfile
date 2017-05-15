FROM daocloud.io/leeonky/ctest:master-ee097d2

RUN sudo yum install -y yasm && \
	wget https://github.com/leeonky/tools_dev/raw/master/ffmpeg-3.3.1.tar.bz2 && \
	tar xf ffmpeg-3.3.1.tar.bz2 && \
	pushd ffmpeg-3.3.1 && \
	./configure --enable-shared && sudo make -j5 install && \
	popd && rm -rf ffmpeg-3.3.1*

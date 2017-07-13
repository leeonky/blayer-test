FROM leeonky/ctest

RUN sudo yum install -y yasm && sudo yum clean all && cd ~ && \
	wget https://github.com/leeonky/tools_dev/raw/master/ffmpeg-3.3.1.tar.bz2 && \
	tar xf ffmpeg-3.3.1.tar.bz2 && \
	pushd ffmpeg-3.3.1 && \
	./configure --enable-shared && make -j8 && sudo make install && \
	popd && rm -rf ffmpeg-3.3.1*

CMD bash

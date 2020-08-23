FROM pytorch/pytorch:latest

RUN mkdir /app/
WORKDIR /app
RUN apt-get update && apt-get install -y --no-install-recommends libfreetype6-dev ffmpeg wget
# RUN wget http://192.168.1.21:8000/vox-cpk.pth.tar
# RUN wget http://192.168.1.21:8000/bakamitai_template.mp4
RUN pip install cython numpy
COPY requirements.txt /app/requirements.txt
RUN pip install --ignore-installed -r requirements.txt
RUN conda install pytorch-cpu==1.0.0 torchvision-cpu==0.2.1 cpuonly -c pytorch
COPY . /app/
ENTRYPOINT ./run-cpu.sh

FROM gitlab-registry.mpcdf.mpg.de/nomad-lab/nomad-fair:develop #v1.3.2
USER root
RUN apt-get update
RUN apt-get -y install git
USER nomad
COPY plugins.txt plugins.txt
RUN pip install -r plugins.txt
COPY nomad.yaml nomad.yaml

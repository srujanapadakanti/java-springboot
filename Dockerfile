FROM oraclelinux:8.4 
LABEL name=srujana
RUN dnf install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64 maven git  -y 
RUN mkdir /srujana-project
WORKDIR /srujana-project
RUN git clone https://github.com/srujanapadakanti/java-springboot.git
WORKDIR java-springboot
RUN mvn clean package

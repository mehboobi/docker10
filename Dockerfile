FROM java:8 COPY src1 /home/root/javahelloworld/src1
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src1/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

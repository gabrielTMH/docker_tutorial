FROM python:3.13.4-slim-bullseye


WORKDIR /app

#RUN mkdir -p /static_folder
#COPY ./statichtml /static_folder

#RUN echo "hello" > index.html

COPY ./src .

#docker build -f DockerFile -t pyapp .
#now i can use
#docker run -it pyapp


#docker build -f DockerFile -t gabrieltory/docker-ai-agent:latest .
#now we will publish that 
#docker push  gabrieltory/docker-ai-agent:latest

#this is a docker command, it will run the enitre comman but each command need to be put in quotes seperated by a , so if i wanted it to do somthing with running npm that could loook like this CMD ["npm", "run","dev"]
CMD ["python", "-m","http.server", "8000"]
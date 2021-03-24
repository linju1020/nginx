FROM nginx:stable

#切换apt-get到国内源 ,提高下载速度
RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak
RUN rm /etc/apt/sources.list
COPY ./apt-get/sources.list /etc/apt/sources.list

# update apt
RUN apt-get update
# install 
RUN apt-get install -y cron certbot python-certbot-nginx bash wget
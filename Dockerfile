FROM alpine

COPY "entrypoint.sh" "/entrypoint.sh"
#RUN sed -i "s@dl-cdn.alpinelinux.org@mirrors.aliyun.com@g" /etc/apk/repositories && \
RUN apk --no-cache add curl jq && chmod +x entrypoint.sh
ENTRYPOINT ["sh","/entrypoint.sh"]
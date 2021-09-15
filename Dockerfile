FROM cikiche001/nginx_php 
LABEL maintainer="466934322@qq.com"

COPY code.sh /code.sh

RUN set -x; chmod +x /code.sh 

# ENTRYPOINT [ "sh", "/code.sh" ]

# CMD ["/usr/sbin/init"]
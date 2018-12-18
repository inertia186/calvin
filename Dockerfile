FROM jekyll/jekyll

# Standard stuff
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ARG DOCKER_TAG
ENV DOCKER_TAG ${DOCKER_TAG}

ENV APP_ROOT /app
WORKDIR /app

# copy in everything from repo
COPY . .

RUN chown -R jekyll:jekyll /app
RUN chmod +x /app/*.sh

USER jekyll

# entrypoint
CMD /app/bootstrap.sh

# jekyll:
EXPOSE 4000

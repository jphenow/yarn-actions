FROM node:12

LABEL version="1.0.0"
LABEL repository="https://github.com/jphenow/yarn-actions"
LABEL homepage="https://github.com/jphenow/yarn-actions"
LABEL maintainer="Jon Phenow <jon@jphenow.com>"

LABEL com.github.actions.name="GitHub Action for Yarn"
LABEL com.github.actions.description="Wraps the yarn CLI to enable common commands in a specfic directory."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="yellow"
COPY LICENSE README.md /

WORKDIR /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]

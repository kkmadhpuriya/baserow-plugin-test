FROM baserow/web-frontend:1.13.3

USER root

COPY ./plugins/test/ /baserow/plugins/test/
RUN /baserow/plugins/install_plugin.sh --folder /baserow/plugins/test

USER $UID:$GID

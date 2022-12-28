FROM baserow/backend:1.13.3

USER root

COPY ./plugins/test/ $BASEROW_PLUGIN_DIR/test/
RUN /baserow/plugins/install_plugin.sh --folder $BASEROW_PLUGIN_DIR/test

USER $UID:$GID

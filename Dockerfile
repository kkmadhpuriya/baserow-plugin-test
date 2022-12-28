FROM baserow/baserow:1.13.3

COPY ./plugins/test/ /baserow/plugins/test/
RUN /baserow/plugins/install_plugin.sh --folder /baserow/plugins/test

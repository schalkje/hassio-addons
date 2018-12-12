ARG BUILD_FROM
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION


FROM $BUILD_FROM

ENV LANG C.UTF-8

ENV CONFIG_PATH=/data/options.json
ENV APPDIR=/opt/HelloWorld

# Copy data for add-on
COPY run.sh /

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
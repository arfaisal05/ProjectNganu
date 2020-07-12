FROM zainarbani/dockerub:one4u-alpine

RUN mkdir /ProjectDils && chmod 777 /ProjectDils
ENV PATH="/ProjectDils/bin:$PATH"
WORKDIR /ProjectDils

RUN git clone https://github.com/arfaisal05/ProjectNganu -b master /ProjectNganu

#
# Copies session and config(if it exists)
#
COPY ./sample_config.env ./userbot.session* ./config.env* /ProjectDils/

#
# Finalization
#
CMD ["python3","-m","userbot"]

FROM elasticsearch:1.7

RUN plugin install elasticsearch/marvel/latest
RUN plugin install elasticsearch/elasticsearch-analysis-kuromoji/2.7.0
RUN plugin install elasticsearch/elasticsearch-cloud-aws/2.7.1
RUN plugin install royrusso/elasticsearch-HQ/v1.0.0
RUN plugin install mobz/elasticsearch-head

COPY config /usr/share/elasticsearch/config

EXPOSE 9200 9300

CMD ["elasticsearch"]

From: https://www.bmc.com/blogs/elasticsearch-commands/

Delete Index

    curl -X DELETE 'http://localhost:9200/samples'

List all Index

    curl -X GET 'http://localhost:9200/_cat/indices?v'

List all docs in index

    curl -X GET 'http://localhost:9200/sample/_search'

query using URL parameters

    curl -X GET http://localhost:9200/samples/_search?q=school:Harvard

query with DSL

    curl -XGET --header 'Content-Type: application/json' http://localhost:9200/samples/_search -d '{
          "query" : {
            "match" : { "school": "Harvard" }
        }
    }'

list index mapping

    curl -X GET http://localhost:9200/samples

Add data

    curl -XPUT --header 'Content-Type: application/json' http://localhost:9200/samples/_doc/1 -d '{
       "school" : "Harvard"
    }'

Update doc

     curl -XPUT --header 'Content-Type: application/json' http://localhost:9200/samples/_doc/2 -d '
    {
        "school": "Clemson"
    }'

    curl -XPOST --header 'Content-Type: application/json' http://localhost:9200/samples/_doc/2/_update -d '{
    "doc" : {
                   "students": 50000}
    }'

Backup index

    curl -XPOST --header 'Content-Type: application/json' http://localhost:9200/_reindex -d '{
      "source": {
        "index": "samples"
      },
      "dest": {
        "index": "samples_backup"
      }
    }'


Bulk load data in JSON format

    export pwd="elastic:"

    curl --user $pwd  -H 'Content-Type: application/x-ndjson' -XPOST 'https://58571402f5464923883e7be42a037917.eu-central-1.aws.cloud.es.io:9243/0/_bulk?pretty' --data-binary @<file>

Show cluster health

    curl --user $pwd  -H 'Content-Type: application/json' -XGET https://58571402f5464923883e7be42a037917.eu-central-1.aws.cloud.es.io:9243/_cluster/health?pretty

Using ElasticSearch with Basic Authentication

    curl -X GET 'http://localhost:9200/_cat/indices?v' -u elastic:(password)

Pretty Print

    curl -X GET 'http://localhost:9200/(index)/_search'?pretty=true

To query and return only certain fields

    GET filebeat-7.6.2-2020.05.05-000001/_search
     {
          "_source": ["suricata.eve.timestamp","source.geo.region_name","event.created"],
          "query":      {
              "match" : { "source.geo.country_iso_code": "GR" }
          }
      }

To Query by Date

    GET filebeat-7.6.2-2020.05.05-000001/_search
     {
        "query": {
            "range" : {
                "event.created": {
                    "gte" : "now-7d/d"
                }
            }
    }
    }

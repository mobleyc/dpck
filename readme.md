# Overview
This repo shows an example of how to install *librdkafka* in order to *pip install confluent-kafka*. Without *librdkafka*, the following error occurs:

```
    creating build/lib.linux-x86_64-2.7/confluent_kafka
    copying confluent_kafka/__init__.py -> build/lib.linux-x86_64-2.7/confluent_kafka
    creating build/lib.linux-x86_64-2.7/confluent_kafka/avro
    copying confluent_kafka/avro/load.py -> build/lib.linux-x86_64-2.7/confluent_kafka/avro
    copying confluent_kafka/avro/error.py -> build/lib.linux-x86_64-2.7/confluent_kafka/avro
    copying confluent_kafka/avro/__init__.py -> build/lib.linux-x86_64-2.7/confluent_kafka/avro
    copying confluent_kafka/avro/cached_schema_registry_client.py -> build/lib.linux-x86_64-2.7/confluent_kafka/avro
    creating build/lib.linux-x86_64-2.7/confluent_kafka/kafkatest
    copying confluent_kafka/kafkatest/verifiable_client.py -> build/lib.linux-x86_64-2.7/confluent_kafka/kafkatest
    copying confluent_kafka/kafkatest/verifiable_consumer.py -> build/lib.linux-x86_64-2.7/confluent_kafka/kafkatest
    copying confluent_kafka/kafkatest/__init__.py -> build/lib.linux-x86_64-2.7/confluent_kafka/kafkatest
    copying confluent_kafka/kafkatest/verifiable_producer.py -> build/lib.linux-x86_64-2.7/confluent_kafka/kafkatest
    creating build/lib.linux-x86_64-2.7/confluent_kafka/avro/serializer
    copying confluent_kafka/avro/serializer/message_serializer.py -> build/lib.linux-x86_64-2.7/confluent_kafka/avro/serializer
    copying confluent_kafka/avro/serializer/__init__.py -> build/lib.linux-x86_64-2.7/confluent_kafka/avro/serializer
    running build_ext
    building 'confluent_kafka.cimpl' extension
    creating build/temp.linux-x86_64-2.7
    creating build/temp.linux-x86_64-2.7/confluent_kafka
    creating build/temp.linux-x86_64-2.7/confluent_kafka/src
    gcc -pthread -fno-strict-aliasing -g -O2 -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -fPIC -I/usr/local/include/python2.7 -c confluent_kafka/src/confluent_kafka.c -o build/temp.linux-x86_64-2.7/confluent_kafka/src/confluent_kafka.o
    In file included from confluent_kafka/src/confluent_kafka.c:17:0:
    confluent_kafka/src/confluent_kafka.h:21:32: fatal error: librdkafka/rdkafka.h: No such file or directory
    #include <librdkafka/rdkafka.h>
                                    ^
    compilation terminated.
    error: command 'gcc' failed with exit status 1
  ```
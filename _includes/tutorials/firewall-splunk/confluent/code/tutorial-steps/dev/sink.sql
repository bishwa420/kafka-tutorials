-- Send data to Splunk
CREATE SINK CONNECTOR IF NOT EXISTS cybersecurity_splunk WITH (
  'connector.class'          = 'SplunkSink',
  'name'                     = 'recipe-cybersecurity-splunk',
  'input.data.format'        = 'JSON',
  'kafka.api.key'            = '<my-kafka-api-key>',
  'kafka.api.secret'         = '<my-kafka-api-secret>',
  'topics'                   = 'splunk_filtered',
  'splunk.hec.uri'           = '<splunk-indexers>',
  'splunk.hec.token'         = '<Splunk HTTP Event Collector token>',
  'tasks.max'                = '1'
);

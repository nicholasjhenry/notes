References:

* http://www.yaml.org/YAML_for_ruby.html
* http://rhnh.net/2011/01/31/yaml-tutorial

Alias example:

    defaults: &defaults
      adapter:  postgres
      host:     localhost

    development:
      database: myapp_development
      <<: *defaults

    test:
      database: myapp_test
      <<: *defaults

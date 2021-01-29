# Strategies

## Fragment Caching

* cache_digest

## Object Caching

* cache_identity?

##  HTTP Caching

* max-age
* etags
* last_modifed

## Model Caching

* caching model queries

### When to use?

* When you're using Fragment or object caching and you want to increased throughput
* Gives you improved server performance, because of reduced # of query/renders
* Gives you improved client performance because it uses the client cache

### Reverse Proxy

Using max-age is a requirement to reduce the number of verificiation requests for
etags and last_modified.

* max-age + etags
* max-age + last_modified

### When to use?

* When you've implemented all the caching you possible can as well as max-age,
  etags, or last_modified and you're expecting millions of users

## Pjax

## Testing Caching in Development

    config.action_controller.perform_caching = true
    config.cache_store = :dalli_store

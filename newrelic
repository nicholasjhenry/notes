README (worth reading first!)

  https://github.com/newrelic/rpm

Documentation

  * Docs: https://newrelic.com/docs/
  * Sites: https://newrelic.com/docs/site/
  * Features: https://newrelic.com/docs/features/
  * Videos: https://newrelic.com/resources/videos

Newrelic config:

    curl https://raw.githubusercontent.com/newrelic/rpm/master/newrelic.yml > config/newrelic.yml

Newrelic on Heroku:

    curl https://raw.github.com/gist/2253296/newrelic.yml > config/newrelic.yml

Key metrics are found in Web transactions and server transaction traces:

    https://newrelic.com/docs/site/web-transactions

Acronyms

* CPM: calls per minute
* PPM: pages per minute
* RPM: requests per minute

Key features offered in Pro:

* Transaction Traces and Key Transactions features
* Slow Database Queries
* Cross Application Tracing

## About App Server Transaction Traces (vs. Web Transactions)

Each minute Transaction Tracers collect data for your slowest individual HTTP
requests, all the way down to the SQL. If a transaction takes longer than a
configurable time period, New Relic captures the exact invocation pattern
and details related to the invocation, such as the exact SQL statement that
was issued.

    https://newrelic.com/docs/features/viewing-transaction-traces

Subscriptions:

    https://rpm.newrelic.com/subscriptions

Custom Parameters:

    if signed_in?
      NewRelic::Agent.add_custom_parameters(user_id: current_user.id)
    end

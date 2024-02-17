Import/Export example:

    mongodump --db example_development --out tmp
    mongorestore --db example_development --drop tmp/example_development

Restore on Heroku:

    heroku mongohq:dump -r production tmp/production
    MONGOHQ_URL=mongodb://heroku:password@staff.mongohq.com:10077/app666
    mongorestore --db app666 -h staff.mongohq.com -u heroku -p password --port 10077 --drop tmp/production/app123

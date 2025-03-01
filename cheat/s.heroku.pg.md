
## Push local development database

heroku pg:reset -a your-app-production

heroku pg:push postgres://postgres:postgres@localhost/your_dev DATABASE_URL --exclude-table-data=oban_jobs --exclude-table-data=oban_peers -a your-app-production
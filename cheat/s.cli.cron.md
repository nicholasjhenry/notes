https://crontab.guru://crontab.guru/

Send cron output via email:

    #minute hour    mday    month   wday    command
    0       3       *       *       *       /path/to/command  | mail -s "subject" john@example.com

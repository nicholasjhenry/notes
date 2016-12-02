Invoke job:

    Delayed::Job.find(job_id).invoke_job

This does not remove the job if it is run successfully. You need to remove it manually:

    Delayed::Job.find(job_id).destroy

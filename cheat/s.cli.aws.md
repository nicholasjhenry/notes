    aws s3 ls
    cat ~/.aws/credentials
    aws s3 ls --profile NAME

List S3

    aws s3 ls
    aws s3 ls --profile another-profile
    aws s3 ls civilcode-test

SQS

    aws sqs send-message --profile cli --queue-url https://sqs.us-east-1.amazonaws.com/123456/my_queue --message-body "{'foo': 'bar'}"

Profiles

    https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html

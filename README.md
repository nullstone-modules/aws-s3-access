# aws-s3-bucket

AWS S3 access capability

## Connections

- `s3_bucket` - The s3 bucket that this capability is granting access to.

## Inputs

- `task role arn` - In order to grant proper access to the S3 bucket, the task role must be passed from the application. The task role arn will be granted access via a policy on the bucket.

## Outputs

- `secrets`
  - S3_BUCKET_NAME - The name of the s3 bucket that we are connecting to. This allows the developer to access this value through env variables and use it to connect to the s3 bucket.

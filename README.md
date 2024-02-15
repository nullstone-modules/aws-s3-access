# S3 Access
#### nullstone/aws-s3-bucket

---

## What Does This Module Do?
Connects an S3 bucket to an application.
This capability first configures the <a href="https://aws.amazon.com/iam/" target="_blank">IAM</a> role policy to grant the application access to the S3 bucket.
This module grants full access to the S3 bucket.
Finally, the bucket name and connection url are injected into the application via ENV variables.

---

## When Should I Use This?
Anytime you need to connect your application to an S3 bucket.

---

## How Do I Use This?
First, create an S3 bucket datastore in Nullstone. You may need to contact someone with privileges to create the S3 bucket for you.
Once the datastore is created, use this capability to connect the S3 bucket to your application.
After connected and your application infrastructure is launched, use the injected ENV variable `S3_URL` to access the S3 bucket in your code.
The `S3_BUCKET_NAME` ENV variable is also injected in case you need that value by itself.

## Connections
| Name                      | Description |
| ------------------------- | ---------------- |
| `s3_bucket`               | The s3 bucket that this capability is granting access to. |

## ENV Variables
| Name                      | Description |
| ------------------------- | ---------------- |
| `S3_BUCKET_NAME`          | The name of the s3 bucket that we are connecting to. |
| `S3_URL`                  | This allows the developer to access this value through env variables and use it to connect to the s3 bucket. |

# CloudTech AWS Project 3
## AWS Security Automation with Terraform

### Project Overview
Designed and deployed AWS security controls using Terraform, including IAM policies, IAM roles, and secure Amazon S3 storage. Audited AWS API activity using CloudTrail.

### Architecture
Terraform → AWS IAM + Amazon S3
AWS API Activity → CloudTrail → S3 Audit Logs

### AWS Services
- AWS Identity and Access Management (IAM)
- Amazon S3
- AWS CloudTrail
- AWS CloudShell
- Terraform

### Security Controls
- IAM policies and role-based access
- S3 Block Public Access
- SSE-S3 AES-256 encryption
- S3 bucket versioning
- BucketOwnerEnforced object ownership
- CloudTrail management-event auditing

### Verification
- Terraform deployment succeeded
- IAM policy and role verified
- S3 security configuration verified
- CloudTrail Event History inspected
- Existing CloudTrail trail reused to avoid duplicate logging

### Cost Management
- Avoided duplicate CloudTrail trails
- Did not enable CloudTrail Lake
- Used read-only security audit commands
- Planned cleanup of lab resources

### Cleanup
Terraform-managed lab resources can be removed
using terraform destroy after reviewing the plan.
Existing CloudTrail resources not managed by this
project must be preserved.

### Skills Demonstrated
Infrastructure as Code, AWS IAM, S3 Security,
Cloud Auditing, Terraform, Security Verification,
and Cloud Cost Management.

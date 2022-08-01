
# AWS Data Pipeline

- Pipeline Components: Definitions of
  - Data Nodes: Input/Output locations for activities
    - Dynamo DB, S3
  - Activities: The work to perform
    - Copy, Shell Command
  - Preconditions: Conditions whether a task should run or not
  - Resources: That become task runners, Like EC2 instances
  - Schedules
- Task Instances: Tasks that result from the compiled components
- Attempts: Actual execution/retry of a task
- Task Runner: Takes Tasks from the pipeline and attempts them

The modern alternative using Lambda would be AWS Step Functions

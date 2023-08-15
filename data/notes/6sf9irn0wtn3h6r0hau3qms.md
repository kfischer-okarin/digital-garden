# Metrics

A statistical value that is collected at regular time intervals.

Intervals could be 1 seconds, 1 minute, 1 day.

The statistic could be average, maximum, minimum, total.

Typically expressed as tuple of:
- `name`
- `value`
- `dimensions`

Dimensions are additional meta-information about the value like Hostname, Region, Deployment Stage, which allow more
detailed filtering.

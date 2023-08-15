
# Query from a DynamoDB Table

[Boto3 Docs](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/dynamodb.html#DynamoDB.Table.query)

```py
import boto3
from boto3.dynamodb.conditions import Key

dynamodb = boto3.resource('dynamodb')
table = dynamodb.Table('<TABLE_NAME>')

result = []
last_evaluated_key = None

while True:
    additional_query_args = {}
    if last_evaluated_key:
        additional_query_args['ExclusiveStartKey'] = last_evaluated_key

    response = table.query(
        KeyConditionExpression=(
            Key('hash_key_attribute').eq('some_value') and
            Key('range_key_attribute').begins_with('some_prefix')
        ),
        **additional_query_args
    )

    result.extend(response['Items'])
    last_evaluated_key = response.get('LastEvaluatedKey', None)
    if not last_evaluated_key:
        break
```

## Additional important arguments
- `ConsistentRead`
- `IndexName`
- `Limit`
- `ScanIndexForward`: Is `true` by default, set to `false` to get results in reverse order

## Conditions
[Boto 3 Docs](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/customizations/dynamodb.html#dynamodb-conditions)

### Usable with keys and attributes
- `begins_with(value)`
- `between(low_value, high_value)`: Is same as `gte(low_value) and lte(high_value)`
- `eq(value)`
- `gt(value)`
- `gte(value)`
- `lt(value)`
- `lte(value)`

## Usable only with attributes
- `attribute_type(type)`
- `contains(value)`
- `exists()`
- `is_in(value)`
- `ne()`: Not Equal
- `not_exists()`
- `size()`: Interprets the atribute condition with regard to size - needs another condition
  - Ex: `name.size() and name.lte(20)`

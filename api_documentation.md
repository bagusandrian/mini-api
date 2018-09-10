# API DOCUMENTATION
List of Rest endpoints supported by mini-api service.

### HOST
Environtment | Url
--- | ---
Development | localhost:9090

### Endpoint
| Service | Description | Method |Endpoints
|-----|-----|-----|-----|-----
[Tax List](#tax-list) | Get information list of tax | `GET` | `mini-api/tax/list`
[Register User](#register-user) | Register new user | `POST` | `mini-api/user/register`
[User list](#user-list) | Get list of users | `GET` | `mini-api/user/list`
[Register Proudct](#register-product) | Register new product | `POST` | `mini-api/product/register`
[Product list](#product-list) | Get list of products | `GET` | `mini-api/product/list`
[Create transaction](#create-transaction) | Create transaction for user | `POST` | `mini-api/transaction/create`
[Transaction list](#transaction-list) | Get information of list transaction, just list of transaction | `GET` | `mini-api/transaction/list`
[Transaction detail](#transaction-detail) | Get detail transaction by transactionID | `GET` | `mini-api/transaction/detail?id=[id_transaction]`

# [](#tax-list)Tax List
### Overview
Get information list of tax

endpoint: `localhost:9090/mini-api/tax/list`

HTTP Method: `GET`
### Example Response
`SUCCESS`
```
{
    "header": {
        "process_time": 2.135996,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": {
        "List": [
            {
                "IDTax": 1,
                "Type": "food"
            },
            {
                "IDTax": 2,
                "Type": "tobacco"
            },
            {
                "IDTax": 3,
                "Type": "entertainment"
            }
        ]
    },
    "Message": "Success"
}
```
`ERROR`
```
{
    "header": {
        "process_time": 5.056192,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": null,
    "error": "Internal server error",
    "Message": ""
}
```

# [](#register-user)Register User
### Overview
register user

endpoint: `localhost:9090/mini-api/user/register`

HTTP Method: `POST`
### Parameters
| Params	| type		| null	| Default	| Description
|-----|-----|-----|-----|-----
| name		| string	| NO	| | name value for user
### Example Response
`SUCCESS`
```
{
    "header": {
        "process_time": 8.36921,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": {
        "ID": 5,
        "Name": "test post"
    },
    "Message": "Success"
}
```
`ERROR`
```
{
    "header": {
        "process_time": 5.056192,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": null,
    "error": "Internal server error",
    "Message": ""
}
```
# [](#user-list)User List
### Overview
Get list of users

endpoint: `localhost:9090/mini-api/user/list`
	
HTTP Method: `GET`
### Example Response
`SUCCESS`
```
{
    "header": {
        "process_time": 1.610863,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": [
        {
            "ID": 1,
            "Name": "user_test"
        },
        {
            "ID": 3,
            "Name": "test post"
        },
        {
            "ID": 4,
            "Name": "test post"
        },
        {
            "ID": 5,
            "Name": "test post"
        }
    ],
    "Message": "Success"
}
```
`ERROR`
```
{
    "header": {
        "process_time": 5.056192,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": null,
    "error": "Internal server error",
    "Message": ""
}
```
# [](#register-product)Register Product
### Overview
Register new product

endpoint: `localhost:9090/mini-api/product/register`

HTTP Method: `POST`
### Parameters
| Params	| type		| null	| Default	| Description
|-----|-----|-----|-----|-----
| product_name	| string	| NO	| | Product name
| price			| float64	| NO	| | Product price	
| tax_code_id	| int		| NO	| | Code of tax. U can get from [Tax List](#tax-list) 

### Example Response
`SUCCESS`
```
{
    "header": {
        "process_time": 2.399198,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": {
        "ID": 10,
        "Name": "product new",
        "Price": 50,
        "TaxCodeID": 3,
    },
    "Message": "Success"
}
```
`ERROR`
```
{
    "header": {
        "process_time": 5.056192,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": null,
    "error": "Internal server error",
    "Message": ""
}
```
# [](#product-list)Product List
### Overview
Get list of products

endpoint: `localhost:9090/mini-api/product/list`

HTTP Method: `GET`
### Example Response
`SUCCESS`
```
{
    "header": {
        "process_time": 0.601567,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": [
        {
            "ID": 7,
            "Name": "Lucky Stretch",
            "Price": 1000,
            "TaxCodeID": 2,
            "TaxType": "tobacco",
        },
        {
            "ID": 8,
            "Name": "Big Mac",
            "Price": 1000,
            "TaxCodeID": 1,
            "TaxType": "food",
        },
        {
            "ID": 9,
            "Name": "Movie",
            "Price": 150,
            "TaxCodeID": 3,
            "TaxType": "entertainment",
        },
        {
            "ID": 10,
            "Name": "product new",
            "Price": 50,
            "TaxCodeID": 3,
            "TaxType": "entertainment",
        }
    ],
    "Message": "Success"
}
```
`ERROR`
```
{
    "header": {
        "process_time": 5.056192,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": null,
    "error": "Internal server error",
    "Message": ""
}
```
# [](#create-transaction)Create Transaction
### Overview
transaction for user

endpoint: `localhost:9090/mini-api/transaction/create`

HTTP Method: `POST`
### Parameters
| Params	| type		| null	| Default	| Description
|-----|-----|-----|-----|-----
| transaction_item	| string	| NO	| | This is list of product U can get get list products from [product list](#product-list)</br>For format is: [product_id]:[quantity]</br>U can multiple assign separate by comma</br>Example: `7:10,8:2,9:3`</br>`7:10` = assign `Lucky Strike` with `10` qty join with quantity
| user_id			| float64	| NO	| 			| U can get information user from [User list](#user-list) and get `user_id`

### Example Response
`SUCCESS`
```
{
    "header": {
        "process_time": 8.843066,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": {
        "ID": 30,
        "UserID": 1,
        "TransactionDate": "2018-09-10T00:00:00Z",
        "DetailTransaction": [
            {
                "ID": 86,
                "Product": {
                    "ID": 7,
                    "Name": "Lucky Stretch",
                    "Price": 1000,
                    "TaxCodeID": 2,
                    "Quantity": 2
                },
                "Tax": 50,
                "SubTotalPrice": 2050
            },
            {
                "ID": 87,
                "Product": {
                    "ID": 8,
                    "Name": "Big Mac",
                    "Price": 1000,
                    "TaxCodeID": 1,
                    "Quantity": 1
                },
                "Tax": 100,
                "SubTotalPrice": 1100
            },
            {
                "ID": 88,
                "Product": {
                    "ID": 9,
                    "Name": "Movie",
                    "Price": 150,
                    "TaxCodeID": 3,
                    "Quantity": 10
                },
                "Tax": 0,
                "SubTotalPrice": 1500
            }
        ],
        "TotalPrice": 4650
    },
    "Message": "Success"
}
```
`ERROR`
```
{
    "header": {
        "process_time": 5.056192,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": null,
    "error": "Internal server error",
    "Message": ""
}
```
# [](#transaction-list)Transaction List
### Overview
Get information of list transaction. This is not spesific detail transaction, just list of transaction

endpoint: `localhost:9090/mini-api/transaction/list`

HTTP Method: `GET`
### Example Response
`SUCCESS`
```
{
"header": {
    "process_time": 0.374177,
    "messages": null,
    "reason": "",
    "error_code": 0
},
        data": [
        {
            "ID": 2,
            "UserID": 1,
            "TransactionDate": "2018-09-10T00:00:00Z",
        },
        {
            "ID": 3,
            "UserID": 1,
            "TransactionDate": "2018-09-10T00:00:00Z",
        },
        {
            "ID": 4,
            "UserID": 1,
            "TransactionDate": "2018-09-10T00:00:00Z",
        }
    ],
    "Message": "Success"
}
```
`ERROR`
```
{
    "header": {
        "process_time": 5.056192,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": null,
    "error": "Internal server error",
    "Message": ""
}
```
# [](#transaction-detail)Transaction Detail
### Overview
Get information of list detail transaction. This is detail transaction by ID transaction from [Transaction list](#transaction-list) to get `id_transaction`.

endpoint: `localhost:9090/mini-api/transaction/detail?id=[id_transaction]`

HTTP Method: `GET`
### Example Response
`SUCCESS`
```
{
    "header": {
        "process_time": 2.0947829999999996,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": {
        "id": 31,
        "user_id": 1,
        "transaction_date": "2018-09-10T22:52:50.796346Z",
        "detail_transaction": [
            {
                "transaction_item_id": 89,
                "Product": {
                    "id": 7,
                    "name": "Lucky Stretch",
                    "price": 1000,
                    "tax_code": 2,
                    "tax_type": "tobacco",
                    "quantity": 2
                },
                "tax": 50,
                "sub_total_price": 2050
            },
            {
                "transaction_item_id": 90,
                "Product": {
                    "id": 8,
                    "name": "Big Mac",
                    "price": 1000,
                    "tax_code": 1,
                    "tax_type": "food",
                    "quantity": 1
                },
                "tax": 100,
                "sub_total_price": 1100
            },
            {
                "transaction_item_id": 91,
                "Product": {
                    "id": 9,
                    "name": "Movie",
                    "price": 150,
                    "tax_code": 3,
                    "tax_type": "entertainment",
                    "quantity": 10
                },
                "tax": 0,
                "sub_total_price": 1500
            }
        ],
        "total_price": 4650
    },
    "Message": "Success"
}
```
`ERROR`
```
{
    "header": {
        "process_time": 5.056192,
        "messages": null,
        "reason": "",
        "error_code": 0
    },
    "data": null,
    "error": "Internal server error",
    "Message": ""
}
```

# Personal Financial Control

## Exemplos de requisições
| Método    | Endpoint 
| :---        |    :---   
| GET, POST, DELETE, PUT    | /expanses       
| GET, POST, DELETE, PUT    | /incomes
| GET    | /expanses/1   
| GET    | /expanses?page=2&per_page=2
| GET    | /expanses?category=Health  
| GET    | /incomes/1   
| GET    | /incomes?page=2&per_page=2 
| GET    | /incomes/2022/03
| GET    | /expanses/2022/03   
| GET    | /resume/2022/03   


### Resume
Nesse endpoint é retornado um resumo de todas os gastos, rendas, saldo final e gasto por categoria do mes passado na url. Segue um exemplo com  `/resume/2022/03` :

```
{
    "totalExpanses": 1600.0,
    "totalIncomes": 1600.0,
    "balance": 0.0,
    "expansesByCategory": {
        "Education": 400.0,
        "Food": 400.0,
        "Health": 400.0,
        "Other": 400.0
    }
}
```
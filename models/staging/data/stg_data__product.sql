with 

source as (

    select * from {{ source('data', 'product') }}

),

renamed as (

    select
        products_id,
        purchse_price
        cast (purchse_price as FLOAT64) as purchase_price

    from source

)

select * from renamed

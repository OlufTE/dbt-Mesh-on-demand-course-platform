with

source as (

    select * from {{ source('jaffle_shop', 'customers') }}

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_name,


        coalesce(name, id) as customer_nameid
    from source

)

select * from renamed

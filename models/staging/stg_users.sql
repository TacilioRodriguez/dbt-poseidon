with source as (

    select
        id,
        name,
        country
    from {{ ref('raw_users') }}

),

renamed as (

    select
        cast(id as int) as user_id,
        trim(name) as name,
        upper(country) as country
    from source

)

select
    user_id,
    name,
    country
from renamed

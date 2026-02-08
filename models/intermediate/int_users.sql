with users as (

    select
        user_id,
        name,
        country
    from {{ ref('stg_users') }}

)

select
    user_id,
    name,
    country
from users

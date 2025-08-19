with cte as (
    select
    TO_TIMESTAMP(STARTED_AT) AS STARTED_AT,
    DATE(TO_TIMESTAMP(STARTED_AT)) AS DATE_STARTED_AT,
    HOUR(TO_TIMESTAMP(STARTED_AT)) AS HOUR_STARTED_AT,
    {{day_type('STARTED_AT')}} as DAY_TYPE,
    {{get_season('STARTED_AT')}} as SEASON_OF_YEAR

    from {{ ref('stg_bike')}}
    limit 999999 offset 1
)

select
*
from cte
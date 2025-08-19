with bike as (
    select
    ride_id,
    REPLACE(started_at, '"', '') as started_at,
    REPLACE(ended_at, '"', '') as ended_at,
    REPLACE(start_station_name, '"', '') as start_station_name,
    start_statio_id,
    REPLACE(end_station_name, '"', '') as end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    REPLACE(member_csual, '"', '') as member_csual
from {{ source('demo', 'bike')}}
where started_at != 'starttime'
)

select * from bike
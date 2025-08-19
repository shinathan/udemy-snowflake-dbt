with bike as (
    select
    distinct
    start_statio_id as station_id,
    start_station_name as station_name,
    start_lat as station_lat,
    start_lng as station_lng

    from {{ ref('stg_bike')}}
    
    limit 88888 offset 1
)

select * from bike
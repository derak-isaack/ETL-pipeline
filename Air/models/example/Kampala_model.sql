
-- Use the `ref` function to select from other models

-- {{ config(materialized='table') }}

-- with kampala_data as (

select *
    from POLLUTE
    where country = 'Uganda'
    AND city = 'Kampala'
    order by pm2_5 DESC
-- )
-- select *
-- from kampala_data;

-- select *
-- from (
--     select *
--     from kampala_data
-- ) as ordered_data2
-- order by pm2_5 DESC;

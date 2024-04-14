
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

-- {{ config(materialized='table') }}

-- with kenya_data as (

select *
    from POLLUTE
    where country = 'Kenya'
    AND city = 'Nairobi'
    ORDER BY pm2_5 DESC
-- ),
-- select *
-- from kenya_data;


-- select *
-- from (
--     select *
--     from kenya_data
-- ) as ordered_data1
-- order by pm2_5 DESC;

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null

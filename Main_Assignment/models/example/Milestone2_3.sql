select code, max(nav_date) as maximum from "ANALYTICS"."MAINASSIGNMENT"."NAVHISTORY" group by code

having max(nav_date) < (select max(nav_date) as maximum from "ANALYTICS"."MAINASSIGNMENT"."NAVHISTORY")

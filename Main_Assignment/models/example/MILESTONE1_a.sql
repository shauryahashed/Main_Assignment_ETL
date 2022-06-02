select month(nav_date) as nav_month ,code, avg(nav) as nav_av,
avg(repurchase_price) as rep_av, avg(sale_price) as sa_av from "ANALYTICS"."MAINASSIGNMENT"."NAVHISTORY" group by code, nav_month

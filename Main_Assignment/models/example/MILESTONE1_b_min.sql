select nav_date, t4.code as code, t4.minimum from "ANALYTICS"."MAINASSIGNMENT"."NAVHISTORY" t3 join
(select t1.code as code, min(t2.nav) as minimum from "ANALYTICS"."MAINASSIGNMENT"."MUTUALFUND" t1 join
"ANALYTICS"."MAINASSIGNMENT"."NAVHISTORY" t2
 on t1.code = t2.code group by t1.code) t4
where t3.code = t4.code and t3.nav = t4.minimum

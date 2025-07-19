use healthcare;



-- Top 10 county Discharge wise

SELECT COUNTY_NAME AS County, SUM(DIS_TOT) AS Discharges
FROM fulldata
GROUP BY COUNTY_NAME
ORDER BY Discharges DESC
LIMIT 10;

-- Hospital Type wise revenue

select TYPE_HOSP as Hospital_Type, SUM(NET_TOT) AS Net_revenue from fulldata group by TYPE_HOSP order by Net_revenue desc;

-- County Wise net total revenue 

select COUNTY_NAME as County, SUM(NET_TOT) AS Net_revenue from fulldata group by COUNTY_NAME order by Net_revenue desc;

-- No. of hospitals county wise

select COUNTY_NAME as County, count(distinct FAC_NAME) AS No_of_Hospitals from fulldata group by COUNTY_NAME order by No_of_Hospitals desc;

-- No. pf Hospitals

select count(distinct FAC_NAME) AS No_of_Hospitals from fulldata;

-- Total Discharges

select sum(DIS_TOT) AS Total_Discharges from fulldata;




-- 
create database crm_analytics;
use crm_analytics;

-- Total Leads--
select count(*) as Total_Leads
FROM tbl_leads;

-- Total Expected Amount--
SELECT 
	concat(
		'$',
        format(
			SUM(CAST(REPLACE(REPLACE(TRIM(`Expected Amount`), '$', ''), ',', '') AS DECIMAL(15,2))), 2) )AS Total_Expected_Amount 
FROM `oppertuninty table`;

-- conversion rate--
SELECT 
    COUNT(*) AS Total_Leads,
    SUM(CASE WHEN TRIM(UPPER(`Converted`)) = 'TRUE' OR `Converted` = '1' THEN 1 ELSE 0 END) AS Converted_Leads,
    concat(
		ROUND(
			(SUM(CASE WHEN TRIM(UPPER(`Converted`)) = 'TRUE' OR `Converted` = '1' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 
			2
		), '%'
    ) AS Conversion_Rate_Percentage
FROM tbl_leads;
{{ config(
  materialized='table'
) }}

SELECT

  cast(employeeid as BIGINT) brokerid,
  cast(managerid as BIGINT) managerid,
  employeefirstname firstname,
  employeelastname lastname,
  employeemi middleinitial,
  employeebranch branch,
  employeeoffice office,
  employeephone phone,
  true iscurrent,
  2 batchid,
  (SELECT min(to_date(datevalue)) as effectivedate FROM {{ source('tpcdi', 'dimdate') }}) effectivedate,
  date('9999-12-31') enddate,
  concat(brokerid, '-', enddate) as sk_brokerid
FROM  {{ source('tpcdi', 'v_hr') }}
WHERE employeejobcode = 314

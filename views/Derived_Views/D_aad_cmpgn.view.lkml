view: aad_cmpgn
{
derived_table:
{
    sql:(
Select
                c.cmpgn_nm,
                c.cmpgn_nbr,
                c.cmpgn_key,
                Cast(c.cmpgn_start_ts As date) AS cmpgn_start_dt,
                Cast (c.cmpgn_end_ts As date) AS cmpgn_end_dt,
                REGEXP_SUBSTR(REGEXP_REPLACE(a.advtsr_xtrn_id, '^[^0-9a-zA-Z]|[^0-9a-zA-Z]$', ''), '[^ _-]+$') AS cust_nbr_eid,
                REGEXP_SUBSTR(REGEXP_REPLACE(a.advtsr_nm, '^[^0-9a-zA-Z]|[^0-9a-zA-Z]$', ''), '[^ _-]+$') AS cust_nbr_anm
              FROM `Internal_MA_CHARTER_looker_Project.AAD_CAMPAIGN_DIM` c
              JOIN `Internal_MA_CHARTER_looker_Project.AAD_ADVERTISER_DIM` a
                ON c.advtsr_key = a.advtsr_key
               AND a.active_ind = 1
              WHERE c.active_ind = 1 ;;
  }}

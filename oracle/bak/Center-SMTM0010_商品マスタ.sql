--商品マスタ COUNT(*)
SELECT
    * 
FROM
    TST20_BAT.SMTM0010 
WHERE
    0 = 0                                      
     --     AND ROWNUM <= 50
--     AND TENP_CD = '113084' 
    AND SHOHIN_CD = '00000670' 
ORDER BY
    SHOHIN_CD


SELECT
    * 
FROM
    SMTM0010 
WHERE
    0 = 0 
    AND SMTM0010.SHOHIN_CD = '00123123' --AE1215




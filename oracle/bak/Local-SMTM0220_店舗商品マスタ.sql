--店舗商品マスタ COUNT(*)
SELECT
    * 
FROM
    D0ST_HW.SMTM0220 
WHERE
    0 = 0                                       
    --     AND ROWNUM <= 50
    --     AND TENP_CD = '103015'
    --     AND TENP_CD in ('103015', '113084')
    --     AND SHOHIN_CD = '00000670'
--     AND not ( 
--         substr(SHOHIN_CD, 4) in ('0070', '0076', '0077') 
--         OR substr(SHOHIN_CD, 3) = '008'
--     )                                           --商品コードチェックOK
--     AND not substr(BUNRUI_CD, - 1) in ('7', '8', '9') --商品分類コードチェックOK
--     AND TENP_TANPIN_KBN in ('1', '2')           --"AE1215"
ORDER BY
    SHOHIN_CD



SELECT
    * 
FROM
    D0ST_HW.SMTM0220 
WHERE
    0 = 0 
--     AND ROWNUM <= 50
    AND TENP_CD = '113084' 
--     AND SHOHIN_CD = '00000670' 
        AND SHOHIN_CD = '00000670'
ORDER BY
    SHOHIN_CD


SELECT
*
FROM
    SSTD0200 
WHERE
    "TENP_CD" = '113084' 
    AND "SHORI_YM" = '202204' 
--     AND "SHUUKEI_BRI_KBN" = 01 
--     AND "GENSON_KBN" = '1' 
AND SHOHIN_CD in ('00100533','00100546','00690863')
    AND "BUNRUI_CD" LIKE '51020702' || '%'

ORDER BY SHORI_YM

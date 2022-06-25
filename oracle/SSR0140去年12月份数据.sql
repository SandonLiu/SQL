SELECT
    TSUJO1."SHORI_YM" AS "SHORI_YM"
    , TSUJO1."TENP_CD" AS "TENP_CD"
    , TSUJO1."BUNRUI_CD" AS "BUNRUI_CD"
    , TSUJO1."SHOHIN_CD" AS "SHOHIN_CD"
    , TSUJO1."GENSON_KBN" AS "TSUJO_GENSON_KBN"
    , TSUJO1."ITM_SU" AS "TSUJO_ITM_SU"
    , TSUJO1."ZAIKO_SU" AS "TSUJO_ZAIKO_SU"
    , TSUJO1."ZAI_GKIN" AS "TSUJO_ZAI_GKIN"
    , TSUJO1."GENSON_GAK" AS "TSUJO_GENSON_GAK"
    , TSUJO1."TGT_KEIJO_GENSON_GAK" AS "TSUJO_TGT_KEIJO_GENSON_GAK"
    , TSUJO1."TGT_KEIJO_MODORI_GAK" AS "TSUJO_TGT_KEIJO_MODORI_GAK"
    , GENSON1."GENSON_KBN" AS "GENSON_GENSON_KBN"
    , GENSON1."ITM_SU" AS "GENSON_ITM_SU"
    , GENSON1."ZAIKO_SU" AS "GENSON_ZAIKO_SU"
    , GENSON1."ZAI_GKIN" AS "GENSON_ZAI_GKIN"
    , GENSON1."GENSON_GAK" AS "GENSON_GENSON_GAK"
    , GENSON1."TGT_KEIJO_GENSON_GAK" AS "GENSON_TGT_KEIJO_GENSON_GAK"
    , GENSON1."TGT_KEIJO_MODORI_GAK" AS "GENSON_TGT_KEIJO_MODORI_GAK" 
FROM
    ( 
        SELECT
            "SHORI_YM"
            , "TENP_CD"
            , "SHUUKEI_BRI_KBN"
            , "BUNRUI_CD"
            , "SHOHIN_CD"
            , "GENSON_KBN"
            , "ITM_SU"
            , "ZAIKO_SU"
            , "ZAI_GKIN"
            , "GENSON_GAK"
            , "TGT_KEIJO_GENSON_GAK"
            , "TGT_KEIJO_MODORI_GAK" 
        FROM
            SSTD0200 
        WHERE
            "TENP_CD" =  '113084'
             AND "SHORI_YM" = '202204'
--             AND "SHUUKEI_BRI_KBN" = ? 
            AND "GENSON_KBN" = '0' 
--             AND "BUNRUI_CD" LIKE '57030122' || '%'
    ) TSUJO1
    , ( 
        SELECT
            "SHORI_YM"
            , "TENP_CD"
            , "SHUUKEI_BRI_KBN"
            , "BUNRUI_CD"
            , "SHOHIN_CD"
            , "GENSON_KBN"
            , "ITM_SU"
            , "ZAIKO_SU"
            , "ZAI_GKIN"
            , "GENSON_GAK"
            , "TGT_KEIJO_GENSON_GAK"
            , "TGT_KEIJO_MODORI_GAK" 
        FROM
            SSTD0200 
        WHERE
            "TENP_CD" = '113084' 
          AND "SHORI_YM" = '202204' 
      --      AND "SHUUKEI_BRI_KBN" = ? 
            AND "GENSON_KBN" = '1' 
--             AND "BUNRUI_CD" LIKE '57030122' || '%'
    ) GENSON1 
WHERE
    TSUJO1."TENP_CD" = GENSON1."TENP_CD"(+) 
    AND TSUJO1."SHORI_YM" = GENSON1."SHORI_YM"(+) 
    AND TSUJO1."BUNRUI_CD" = GENSON1."BUNRUI_CD"(+) 
    AND TSUJO1."SHUUKEI_BRI_KBN" = GENSON1."SHUUKEI_BRI_KBN"(+) 
UNION ALL 
SELECT
    GENSON2."SHORI_YM" AS "SHORI_YM"
    , GENSON2."TENP_CD" AS "TENP_CD"
    , GENSON2."BUNRUI_CD" AS "BUNRUI_CD"
    , GENSON2."SHOHIN_CD" AS "SHOHIN_CD"
    , '0' AS "TSUJO_GENSON_KBN"
    , Null AS "TSUJO_ITM_SU"
    , Null AS "TSUJO_ZAIKO_SU"
    , Null AS "TSUJO_ZAI_GKIN"
    , Null AS "TSUJO_GENSON_GAK"
    , Null AS "TSUJO_TGT_KEIJO_GENSON_GAK"
    , Null AS "TSUJO_TGT_KEIJO_MODORI_GAK"
    , GENSON2."GENSON_KBN" AS "GENSON_GENSON_KBN"
    , GENSON2."ITM_SU" AS "GENSON_ITM_SU"
    , GENSON2."ZAIKO_SU" AS "GENSON_ZAIKO_SU"
    , GENSON2."ZAI_GKIN" AS "GENSON_ZAI_GKIN"
    , GENSON2."GENSON_GAK" AS "GENSON_GENSON_GAK"
    , GENSON2."TGT_KEIJO_GENSON_GAK" AS "GENSON_TGT_KEIJO_GENSON_GAK"
    , GENSON2."TGT_KEIJO_MODORI_GAK" AS "GENSON_TGT_KEIJO_MODORI_GAK" 
FROM
    ( 
        SELECT
            "SHORI_YM"
            , "TENP_CD"
            , "SHUUKEI_BRI_KBN"
            , "BUNRUI_CD"
            , "SHOHIN_CD"
            , "GENSON_KBN"
            , "ITM_SU"
            , "ZAIKO_SU"
            , "ZAI_GKIN"
            , "GENSON_GAK"
            , "TGT_KEIJO_GENSON_GAK"
            , "TGT_KEIJO_MODORI_GAK" 
        FROM
            SSTD0200 
        WHERE
            TENP_CD = '113084' 
          AND SHORI_YM = '202204' 
         --   AND SHUUKEI_BRI_KBN = ? 
            AND GENSON_KBN = '1' 
--              AND BUNRUI_CD LIKE '57030122' || '%'
    ) GENSON2 
WHERE
    NOT EXISTS ( 
        SELECT
            'X' 
        FROM
            ( 
                SELECT
                    "SHORI_YM"
                    , "TENP_CD"
                    , "SHUUKEI_BRI_KBN"
                    , "BUNRUI_CD"
                    , "SHOHIN_CD" 
                FROM
                    SSTD0200 
                WHERE
                    "TENP_CD" = '113084' 
                   AND "SHORI_YM" = '202204' 
              --      AND "SHUUKEI_BRI_KBN" = ? 
                    AND "GENSON_KBN" = '0' 
--                     AND "BUNRUI_CD" LIKE '57030122' || '%'
            ) TSUJO2 
        WHERE
            GENSON2.SHORI_YM = TSUJO2.SHORI_YM 
            AND GENSON2.TENP_CD = TSUJO2.TENP_CD 
            AND GENSON2.SHUUKEI_BRI_KBN = TSUJO2.SHUUKEI_BRI_KBN 
            AND GENSON2.SHOHIN_CD = TSUJO2.SHOHIN_CD 
            AND GENSON2.BUNRUI_CD = TSUJO2.BUNRUI_CD
    ) 
ORDER BY
    BUNRUI_CD
    , SHOHIN_CD 


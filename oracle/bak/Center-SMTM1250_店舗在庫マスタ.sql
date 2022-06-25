SELECT
    * 
FROM
    TST20_BAT.SMTM1250 
WHERE
    0 = 0 
    AND ROWNUM <= 50 
    AND SHOHIN_CD = '00000670'
--     AND TENP_CD = '103015'


select
    SMTM1250.TENP_CD
    , SMTM1250.SHOHIN_CD
    , SMTM1250.TEN_BAIKA
    , SMTM1250.TEN_BAIKA_ZK
    , SMTM1250.NONYU_TNK
    , SMTM1250.SIME_NONYU_TNK
    , SMTM1250.DAIHYO_SHOHIN_CD
    , SMTM1250.TENP_TANPIN_KBN
    , SMTW5050.BUNRUI_CD
    , SMTW5050.ZBUNRUI_CD
    , SMTW5050.SHOHIN_NM
    , SMTW5050.SHOHIN_NM_KANA 
from
    SMTM1250 
    left join SMTW5050 
        on SMTM1250.SHOHIN_CD = SMTW5050.SHOHIN_CD 
WHERE
    0 = 0 
    AND ROWNUM <= 500 
    AND SMTM1250.TENP_CD = '103015'            
        AND SMTM1250.SHOHIN_CD = '123123'  
    AND not ( 
        substr(SMTM1250.SHOHIN_CD, 4) in ('0070', '0076', '0077') 
        OR substr(SMTM1250.SHOHIN_CD, 3) = '008'
    )                                           --���i�R�[�h�`�F�b�NOK
    AND not substr(SMTW5050.BUNRUI_CD, - 1) in ('7', '8', '9') --���i���ރR�[�h�`�F�b�NOK
    AND SMTM1250.TENP_TANPIN_KBN in ('1', '2')  --"AE1215"
    AND SMTM1250.UPD_KBN <> '3'


SELECT
    SCTM0120."TAN_NM" AS "TAN_NM" 
FROM
    SCTM0120 -- �S���҃}�X�^
WHERE
    SCTM0120."KAISHA_CD" = RPAD( 
        ( 
            SELECT
                SMTM0180."KAISHA_CD" AS "KAISHA_CD" 
            FROM
                SMTM0180 --�X�܃}�X�^
            WHERE
                SMTM0180."TENP_CD" = RPAD('113084', 6, ' ')
        ) 
        , 4
        , ' '
    ) 
    AND SCTM0120."TAN_CD" = RPAD('003100', 6, ' ')


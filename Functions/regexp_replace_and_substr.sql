select
b.telefone1,
b.telefone2
from(

SELECT 

SUBSTR(REGEXP_REPLACE(A.AD_TELEF2, '[^0-9]'), 1, 10) AS TELEFONE1,
SUBSTR(REGEXP_REPLACE(A.AD_TELEF3, '[^0-9]'), 1, 10) AS TELEFONE2

FROM TGFPAR A
) B;



SELECT 
    REGEXP_COUNT('An apple costs 50 cents, a banana costs 10 cents, Agora e um teste','\d+') result
FROM 
    dual;
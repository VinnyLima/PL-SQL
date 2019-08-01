/*
AM   - AM ou PM   
CC   - S�culo 
D    - Dia da semana (1-7)
DAY  - Dia da semana ('SUNDAY') 
DD   - Dia do m�s (1-31)
DDD  - Dia do ano
DY   - Dia da semana abreviado ('SUN')
FM   - Tira os blanks ou Zeros da esquerda
HH   - Hora do dia (0-12)
HH24 - Hora do dia (0-24)
MI   - Minutos da Hora
MM   - M�s com 2 d�gitos
MON  - M�s abreviado ('NOV')
MONTH- M�s por extenso ('NOVEMBER')
PM   - AM ou PM
RR   - Ano com 2 d�gitos - especial
RRRR - Ano com 4 d�gitos
SS   - Segundos do minuto(0 - 59)
SSSSS- Segundos do dia
W    - Semana do M�s
WW   - Semana do Ano
YEAR - Ano por extenso
YY   - Ano com 2 d�gitos
YYYY - Ano com 4 d�gitos

*/

--VERIFICANDO O DIAL ULTIL OU FINAL DE SEMANA!
SELECT
    CASE
        WHEN TO_CHAR(SYSDATE,'d') IN ( 1,  7) THEN 'FIM DE SEMANA'
        ELSE 'DIA UTIL'
    END as QUAL_DIA
FROM
    dual;
    
--verificando o m�s anterior, para exibir meses anteriores sera necessario adiionar a quantidade de onde esta o -1
    
SELECT TO_CHAR(ADD_MONTHS(SYSDATE, -1), 'MM/YYYY') AS MES_PASSADO FROM DUAL;

SELECT GET_DIAS_UTEIS(ADD_MONTHS(trunc(sysdate, 'mm'), 1), ADD_MONTHS(last_day(SYSDATE), 1),0) as dias_uteis FROM DUAL;

SELECT ADD_MONTHS(trunc(sysdate, 'mm'), 1) AS PRIMEIRO_DIA, ADD_MONTHS(last_day(SYSDATE), 1) AS ULTIMO_DIA FROM DUAL;

select trunc(sysdate, 'mm') DATA from dual;

select trunc(sysdate, 'rr') DATA from dual;

select * from TSIFER;

SELECT GET_DIAS_UTEIS( '01/07/2019', '31/07/2019', 0) as dias_uteis from dual;




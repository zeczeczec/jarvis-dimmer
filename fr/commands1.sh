*ALLUM[^ ]+ (*)==pg_dz_switch On "(1)"
*ETEIN[^ ]+ (*)==pg_dz_switch Off "(1)"
*FERME (*)==pg_dz_blind On "(1)"
*OUVRE (*)==pg_dz_blind Off "(1)"
*QUEL*ETAT* (*)|*DONNE*ETAT* (*)==pg_dz_stat "(1)"
*COMBIEN*DEGREE*FAIT* (*)|*DONNE*TEMPERATURE (*)|*QUELLE*TEMPERATURE (*)==pg_dz_temp "(1)"
*BAISSE+ (*)==pg_dz_dim down , -10 "(3)"
*PLUS+ (*)==pg_dz_dim up ,  10 "(3)"
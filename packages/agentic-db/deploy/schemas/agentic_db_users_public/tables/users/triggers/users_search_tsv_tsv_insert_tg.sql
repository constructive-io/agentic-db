-- Deploy: schemas/agentic_db_users_public/tables/users/triggers/users_search_tsv_tsv_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_private/trigger_fns/users_search_tsv_tsv
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE TRIGGER users_search_tsv_tsv_insert_tg
BEFORE INSERT ON agentic_db_users_public.users
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.users_search_tsv_tsv ( );


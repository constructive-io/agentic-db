-- Deploy: schemas/agent_db_users_public/tables/users/triggers/users_search_tsv_tsv_insert_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_private/schema
-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_private/trigger_fns/users_search_tsv_tsv


CREATE TRIGGER users_search_tsv_tsv_insert_tg
BEFORE INSERT ON "agent_db_users_public".users
FOR EACH ROW
EXECUTE PROCEDURE "agent_db_private".users_search_tsv_tsv ( );


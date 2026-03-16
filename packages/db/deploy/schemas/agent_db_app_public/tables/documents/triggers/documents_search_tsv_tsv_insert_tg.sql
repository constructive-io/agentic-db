-- Deploy: schemas/agent_db_app_public/tables/documents/triggers/documents_search_tsv_tsv_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_private/schema
-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_private/trigger_fns/documents_search_tsv_tsv
-- requires: schemas/agent_db_app_public/tables/projects/triggers/projects_search_tsv_tsv_update_tg


CREATE TRIGGER documents_search_tsv_tsv_insert_tg
BEFORE INSERT ON "agent_db_app_public".documents
FOR EACH ROW
EXECUTE PROCEDURE "agent_db_private".documents_search_tsv_tsv ( );


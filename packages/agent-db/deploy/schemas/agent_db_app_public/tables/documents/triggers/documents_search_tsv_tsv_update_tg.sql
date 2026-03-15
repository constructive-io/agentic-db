-- Deploy: schemas/agent_db_app_public/tables/documents/triggers/documents_search_tsv_tsv_update_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_private/schema
-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_private/trigger_fns/documents_search_tsv_tsv
-- requires: schemas/agent_db_app_public/tables/projects/triggers/projects_search_tsv_tsv_update_tg


CREATE TRIGGER documents_search_tsv_tsv_update_tg
BEFORE UPDATE ON agent_db_app_public.documents
FOR EACH ROW
WHEN (OLD.title IS DISTINCT FROM NEW.title OR OLD.content IS DISTINCT FROM NEW.content)
EXECUTE PROCEDURE agent_db_private.documents_search_tsv_tsv ( );


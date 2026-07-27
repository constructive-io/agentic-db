-- Deploy: schemas/agentic_db_app_public/tables/documents/triggers/documents_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_private/trigger_fns/documents_embedding_stale


CREATE TRIGGER documents_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.documents
FOR EACH ROW
WHEN (OLD.title IS DISTINCT FROM NEW.title OR OLD.content IS DISTINCT FROM NEW.content)
EXECUTE PROCEDURE agentic_db_app_private.documents_embedding_stale ( );


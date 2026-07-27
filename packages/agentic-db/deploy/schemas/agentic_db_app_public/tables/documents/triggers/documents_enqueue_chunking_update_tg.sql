-- Deploy: schemas/agentic_db_app_public/tables/documents/triggers/documents_enqueue_chunking_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_private/trigger_fns/documents_enqueue_chunking


CREATE TRIGGER documents_enqueue_chunking_update_tg
AFTER UPDATE ON agentic_db_app_public.documents
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_app_private.documents_enqueue_chunking ( );


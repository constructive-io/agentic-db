-- Deploy: schemas/agentic_db_app_public/tables/documents/triggers/documents_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_private/trigger_fns/documents_embedding_stale


CREATE TRIGGER documents_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.documents
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_app_private.documents_embedding_stale ( );


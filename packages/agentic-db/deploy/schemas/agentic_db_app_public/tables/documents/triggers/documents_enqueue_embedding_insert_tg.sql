-- Deploy: schemas/agentic_db_app_public/tables/documents/triggers/documents_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_private/trigger_fns/documents_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


CREATE TRIGGER documents_enqueue_embedding_insert_tg
AFTER INSERT ON agentic_db_app_public.documents
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".documents_enqueue_embedding ( );


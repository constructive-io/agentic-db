-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/triggers/autonomy_records_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_private/trigger_fns/autonomy_records_embedding_auto_updated_at


CREATE TRIGGER autonomy_records_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.autonomy_records
FOR EACH ROW
WHEN (OLD.embedding IS DISTINCT FROM NEW.embedding)
EXECUTE PROCEDURE agentic_db_app_private.autonomy_records_embedding_auto_updated_at ( );


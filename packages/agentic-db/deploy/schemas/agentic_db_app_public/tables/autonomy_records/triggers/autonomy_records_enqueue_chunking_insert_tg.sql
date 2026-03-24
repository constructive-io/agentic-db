-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/triggers/autonomy_records_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_private/trigger_fns/autonomy_records_enqueue_chunking


CREATE TRIGGER autonomy_records_enqueue_chunking_insert_tg
AFTER INSERT ON agentic_db_app_public.autonomy_records
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.autonomy_records_enqueue_chunking ( );


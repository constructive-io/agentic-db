-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/triggers/autonomy_records_enqueue_embedding_update_tg


GRANT DELETE ON agentic_db_app_public.autonomy_record_chunks TO authenticated;


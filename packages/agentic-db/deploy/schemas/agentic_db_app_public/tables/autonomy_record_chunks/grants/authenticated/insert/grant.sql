-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


GRANT INSERT ON agentic_db_app_public.autonomy_record_chunks TO authenticated;


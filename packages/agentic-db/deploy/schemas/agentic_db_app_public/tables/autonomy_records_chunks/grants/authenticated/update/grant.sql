-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


GRANT UPDATE ON "agentic_db_app_public".autonomy_records_chunks TO authenticated;


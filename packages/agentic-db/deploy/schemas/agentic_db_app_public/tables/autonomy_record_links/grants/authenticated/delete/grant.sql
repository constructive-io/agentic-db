-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


GRANT DELETE ON agentic_db_app_public.autonomy_record_links TO authenticated;


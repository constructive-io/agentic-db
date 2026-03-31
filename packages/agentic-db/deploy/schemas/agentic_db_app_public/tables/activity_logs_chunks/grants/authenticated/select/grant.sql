-- Deploy: schemas/agentic_db_app_public/tables/activity_logs_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


GRANT SELECT ON "agentic_db_app_public".activity_logs_chunks TO authenticated;


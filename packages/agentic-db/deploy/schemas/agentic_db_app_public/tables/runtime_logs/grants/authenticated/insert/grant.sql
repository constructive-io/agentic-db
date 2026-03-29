-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


GRANT INSERT ON agentic_db_app_public.runtime_logs TO authenticated;


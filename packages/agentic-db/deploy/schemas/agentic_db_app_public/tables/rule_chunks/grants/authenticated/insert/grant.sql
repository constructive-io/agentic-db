-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/task_chunks/columns/embedding/column


GRANT INSERT ON agentic_db_app_public.rule_chunks TO authenticated;


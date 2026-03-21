-- Deploy: schemas/agentic_db_app_public/tables/task_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/embedding/column


GRANT SELECT ON agentic_db_app_public.task_chunks TO authenticated;


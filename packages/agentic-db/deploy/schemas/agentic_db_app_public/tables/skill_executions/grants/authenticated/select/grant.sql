-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/columns/embedding/column


GRANT SELECT ON agentic_db_app_public.skill_executions TO authenticated;


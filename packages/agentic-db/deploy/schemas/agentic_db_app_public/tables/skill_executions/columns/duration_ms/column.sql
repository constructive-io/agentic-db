-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/columns/duration_ms/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/skill_executions/columns/completed_at/column


ALTER TABLE agentic_db_app_public.skill_executions 
  ADD COLUMN duration_ms int;


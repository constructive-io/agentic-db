-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/columns/skill_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/skill_executions/columns/updated_at/alterations/alt0000004082


ALTER TABLE agentic_db_app_public.skill_executions 
  ADD COLUMN skill_id uuid;


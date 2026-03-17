-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/columns/skill_id/alterations/alt0000001107
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/skill_executions/columns/skill_id/column
-- requires: schemas/agentic_db_app_public/tables/skill_executions/columns/updated_at/alterations/alt0000001106


ALTER TABLE "agentic_db_app_public".skill_executions 
  ALTER COLUMN skill_id SET NOT NULL;


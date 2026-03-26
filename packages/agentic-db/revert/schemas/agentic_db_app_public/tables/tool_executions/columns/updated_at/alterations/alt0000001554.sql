-- Revert: schemas/agentic_db_app_public/tables/tool_executions/columns/updated_at/alterations/alt0000001554


ALTER TABLE "agentic_db_app_public".tool_executions 
  ALTER COLUMN updated_at DROP NOT NULL;



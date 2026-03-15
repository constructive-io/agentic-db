-- Revert: schemas/agent_db_app_public/tables/workflows/columns/is_active/column


ALTER TABLE "agent_db_app_public".workflows 
  DROP COLUMN is_active RESTRICT;



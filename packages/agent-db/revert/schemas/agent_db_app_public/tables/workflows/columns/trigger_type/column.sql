-- Revert: schemas/agent_db_app_public/tables/workflows/columns/trigger_type/column


ALTER TABLE "agent_db_app_public".workflows 
  DROP COLUMN trigger_type RESTRICT;



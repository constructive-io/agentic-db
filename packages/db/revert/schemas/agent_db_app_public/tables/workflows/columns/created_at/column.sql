-- Revert: schemas/agent_db_app_public/tables/workflows/columns/created_at/column


ALTER TABLE "agent_db_app_public".workflows 
  DROP COLUMN created_at RESTRICT;



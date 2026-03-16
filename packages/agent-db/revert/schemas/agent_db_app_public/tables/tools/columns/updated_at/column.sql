-- Revert: schemas/agent_db_app_public/tables/tools/columns/updated_at/column


ALTER TABLE "agent_db_app_public".tools 
  DROP COLUMN updated_at RESTRICT;



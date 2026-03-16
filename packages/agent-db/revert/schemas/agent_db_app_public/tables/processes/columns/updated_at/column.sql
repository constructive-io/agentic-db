-- Revert: schemas/agent_db_app_public/tables/processes/columns/updated_at/column


ALTER TABLE "agent_db_app_public".processes 
  DROP COLUMN updated_at RESTRICT;



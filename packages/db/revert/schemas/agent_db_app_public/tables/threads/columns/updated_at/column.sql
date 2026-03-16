-- Revert: schemas/agent_db_app_public/tables/threads/columns/updated_at/column


ALTER TABLE "agent_db_app_public".threads 
  DROP COLUMN updated_at RESTRICT;



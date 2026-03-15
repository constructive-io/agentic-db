-- Revert: schemas/agent_db_app_public/tables/repositories/columns/updated_at/column


ALTER TABLE "agent_db_app_public".repositories 
  DROP COLUMN updated_at RESTRICT;



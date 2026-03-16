-- Revert: schemas/agent_db_app_public/tables/repositories/columns/created_at/column


ALTER TABLE "agent_db_app_public".repositories 
  DROP COLUMN created_at RESTRICT;



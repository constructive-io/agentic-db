-- Revert: schemas/agent_db_app_public/tables/repositories/columns/id/column


ALTER TABLE "agent_db_app_public".repositories 
  DROP COLUMN id RESTRICT;



-- Revert: schemas/agent_db_app_public/tables/repositories/columns/embedding/column


ALTER TABLE "agent_db_app_public".repositories 
  DROP COLUMN embedding RESTRICT;



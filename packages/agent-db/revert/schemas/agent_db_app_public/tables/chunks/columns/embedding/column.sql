-- Revert: schemas/agent_db_app_public/tables/chunks/columns/embedding/column


ALTER TABLE "agent_db_app_public".chunks 
  DROP COLUMN embedding RESTRICT;



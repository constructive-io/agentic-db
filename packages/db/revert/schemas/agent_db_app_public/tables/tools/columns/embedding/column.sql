-- Revert: schemas/agent_db_app_public/tables/tools/columns/embedding/column


ALTER TABLE "agent_db_app_public".tools 
  DROP COLUMN embedding RESTRICT;



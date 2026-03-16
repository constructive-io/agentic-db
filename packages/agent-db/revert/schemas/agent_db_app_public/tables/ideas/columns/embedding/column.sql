-- Revert: schemas/agent_db_app_public/tables/ideas/columns/embedding/column


ALTER TABLE "agent_db_app_public".ideas 
  DROP COLUMN embedding RESTRICT;



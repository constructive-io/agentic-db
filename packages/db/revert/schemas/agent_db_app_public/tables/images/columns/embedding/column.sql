-- Revert: schemas/agent_db_app_public/tables/images/columns/embedding/column


ALTER TABLE "agent_db_app_public".images 
  DROP COLUMN embedding RESTRICT;



-- Revert: schemas/agent_db_app_public/tables/threads/columns/title/column


ALTER TABLE "agent_db_app_public".threads 
  DROP COLUMN title RESTRICT;



-- Revert: schemas/agent_db_app_public/tables/threads/columns/title/alterations/alt0000004398


ALTER TABLE "agent_db_app_public".threads 
  ALTER COLUMN title DROP NOT NULL;



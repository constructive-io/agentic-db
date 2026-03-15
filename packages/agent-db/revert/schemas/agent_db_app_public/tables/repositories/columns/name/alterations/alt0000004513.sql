-- Revert: schemas/agent_db_app_public/tables/repositories/columns/name/alterations/alt0000004513


ALTER TABLE "agent_db_app_public".repositories 
  ALTER COLUMN name DROP NOT NULL;



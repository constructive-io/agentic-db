-- Revert: schemas/agent_db_app_public/tables/tools/columns/name/alterations/alt0000002055


ALTER TABLE "agent_db_app_public".tools 
  ALTER COLUMN name DROP NOT NULL;



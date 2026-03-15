-- Revert: schemas/agent_db_app_public/tables/lists/columns/name/alterations/alt0000004693


ALTER TABLE "agent_db_app_public".lists 
  ALTER COLUMN name DROP NOT NULL;



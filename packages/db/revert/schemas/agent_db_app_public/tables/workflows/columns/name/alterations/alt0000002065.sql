-- Revert: schemas/agent_db_app_public/tables/workflows/columns/name/alterations/alt0000002065


ALTER TABLE "agent_db_app_public".workflows 
  ALTER COLUMN name DROP NOT NULL;



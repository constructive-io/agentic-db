-- Revert: schemas/agent_db_app_public/tables/workflows/columns/name/alterations/alt0000004450


ALTER TABLE "agent_db_app_public".workflows 
  ALTER COLUMN name DROP NOT NULL;



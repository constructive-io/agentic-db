-- Revert: schemas/agent_db_app_public/tables/trips/columns/name/alterations/alt0000004689


ALTER TABLE "agent_db_app_public".trips 
  ALTER COLUMN name DROP NOT NULL;



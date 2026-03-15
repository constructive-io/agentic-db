-- Revert: schemas/agent_db_app_public/tables/venues/columns/name/alterations/alt0000002607


ALTER TABLE "agent_db_app_public".venues 
  ALTER COLUMN name DROP NOT NULL;



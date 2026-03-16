-- Revert: schemas/agent_db_app_public/tables/venues/columns/id/alterations/alt0000001749


ALTER TABLE "agent_db_app_public".venues 
  ALTER COLUMN id DROP NOT NULL;



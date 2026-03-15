-- Revert: schemas/agent_db_app_public/tables/trips/columns/id/alterations/alt0000004634


ALTER TABLE "agent_db_app_public".trips 
  ALTER COLUMN id DROP NOT NULL;



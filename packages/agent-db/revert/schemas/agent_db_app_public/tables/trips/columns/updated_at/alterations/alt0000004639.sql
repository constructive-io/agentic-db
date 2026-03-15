-- Revert: schemas/agent_db_app_public/tables/trips/columns/updated_at/alterations/alt0000004639


ALTER TABLE "agent_db_app_public".trips 
  ALTER COLUMN updated_at DROP NOT NULL;



-- Revert: schemas/agent_db_app_public/tables/venues/columns/updated_at/alterations/alt0000002605


ALTER TABLE "agent_db_app_public".venues 
  ALTER COLUMN updated_at DROP NOT NULL;



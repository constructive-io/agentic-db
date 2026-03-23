-- Revert: schemas/agentic_db_app_public/tables/trips/columns/id/alterations/alt0000001530


ALTER TABLE "agentic_db_app_public".trips 
  ALTER COLUMN id DROP NOT NULL;



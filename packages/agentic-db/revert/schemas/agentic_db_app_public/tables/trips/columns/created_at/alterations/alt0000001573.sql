-- Revert: schemas/agentic_db_app_public/tables/trips/columns/created_at/alterations/alt0000001573


ALTER TABLE "agentic_db_app_public".trips 
  ALTER COLUMN created_at DROP NOT NULL;



-- Revert: schemas/agentic_db_app_public/tables/lists/columns/updated_at/alterations/alt0000001487


ALTER TABLE "agentic_db_app_public".lists 
  ALTER COLUMN updated_at DROP NOT NULL;



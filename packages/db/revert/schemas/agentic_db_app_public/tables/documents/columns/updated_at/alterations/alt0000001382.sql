-- Revert: schemas/agentic_db_app_public/tables/documents/columns/updated_at/alterations/alt0000001382


ALTER TABLE "agentic_db_app_public".documents 
  ALTER COLUMN updated_at DROP NOT NULL;



-- Revert: schemas/agentic_db_app_public/tables/repositories/columns/updated_at/alterations/alt0000001307


ALTER TABLE "agentic_db_app_public".repositories 
  ALTER COLUMN updated_at DROP NOT NULL;



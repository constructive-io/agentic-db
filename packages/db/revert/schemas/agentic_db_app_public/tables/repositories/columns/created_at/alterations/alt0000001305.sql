-- Revert: schemas/agentic_db_app_public/tables/repositories/columns/created_at/alterations/alt0000001305


ALTER TABLE "agentic_db_app_public".repositories 
  ALTER COLUMN created_at DROP NOT NULL;



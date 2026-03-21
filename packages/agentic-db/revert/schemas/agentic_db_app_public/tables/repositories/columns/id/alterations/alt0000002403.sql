-- Revert: schemas/agentic_db_app_public/tables/repositories/columns/id/alterations/alt0000002403


ALTER TABLE "agentic_db_app_public".repositories 
  ALTER COLUMN id DROP NOT NULL;



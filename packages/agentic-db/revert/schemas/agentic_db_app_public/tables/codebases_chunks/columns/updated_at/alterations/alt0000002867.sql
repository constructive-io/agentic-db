-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/columns/updated_at/alterations/alt0000002867


ALTER TABLE agentic_db_app_public.codebases_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;



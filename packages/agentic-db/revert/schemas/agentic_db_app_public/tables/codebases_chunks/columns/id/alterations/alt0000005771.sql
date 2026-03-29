-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/columns/id/alterations/alt0000005771


ALTER TABLE agentic_db_app_public.codebases_chunks 
  ALTER COLUMN id DROP NOT NULL;



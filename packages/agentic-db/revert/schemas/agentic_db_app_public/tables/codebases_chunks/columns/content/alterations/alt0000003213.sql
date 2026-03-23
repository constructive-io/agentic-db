-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/columns/content/alterations/alt0000003213


ALTER TABLE agentic_db_app_public.codebases_chunks 
  ALTER COLUMN content DROP NOT NULL;



-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/name/alterations/alt0000015628


ALTER TABLE agentic_db_app_public.codebases 
  ALTER COLUMN name DROP NOT NULL;



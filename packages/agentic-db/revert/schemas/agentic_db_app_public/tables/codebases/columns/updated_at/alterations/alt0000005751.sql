-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/updated_at/alterations/alt0000005751


ALTER TABLE agentic_db_app_public.codebases 
  ALTER COLUMN updated_at DROP NOT NULL;



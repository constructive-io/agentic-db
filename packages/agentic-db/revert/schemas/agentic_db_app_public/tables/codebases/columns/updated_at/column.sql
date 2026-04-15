-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/updated_at/column


ALTER TABLE agentic_db_app_public.codebases 
  DROP COLUMN updated_at RESTRICT;



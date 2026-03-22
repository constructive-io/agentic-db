-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/id/column


ALTER TABLE agentic_db_app_public.codebases 
  DROP COLUMN id RESTRICT;



-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/repository_url/column


ALTER TABLE agentic_db_app_public.codebases 
  DROP COLUMN repository_url RESTRICT;



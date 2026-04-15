-- Revert: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/codebase_id/alterations/alt0000013400


ALTER TABLE agentic_db_app_public.codebase_dependencies 
  ALTER COLUMN codebase_id DROP NOT NULL;



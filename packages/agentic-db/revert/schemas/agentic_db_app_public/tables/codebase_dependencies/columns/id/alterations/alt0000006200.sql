-- Revert: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/id/alterations/alt0000006200


ALTER TABLE agentic_db_app_public.codebase_dependencies 
  ALTER COLUMN id DROP NOT NULL;



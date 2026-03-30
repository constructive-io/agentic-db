-- Revert: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/dependency_id/alterations/alt0000001652


ALTER TABLE "agentic_db_app_public".codebase_dependencies 
  ALTER COLUMN dependency_id DROP NOT NULL;



-- Revert: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/codebasis_id/alterations/alt0000001525


ALTER TABLE "agentic_db_app_public".codebase_dependencies 
  ALTER COLUMN codebasis_id DROP NOT NULL;



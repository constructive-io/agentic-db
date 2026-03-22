-- Revert: schemas/agentic_db_app_public/tables/codebase_dependencies/constraints/codebase_dependencies_codebasis_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".codebase_dependencies 
  DROP CONSTRAINT codebase_dependencies_codebasis_id_fkey;



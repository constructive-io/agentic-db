-- Revert: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/entity_id/alterations/alt0000002473


ALTER TABLE "agentic_db_app_public".codebase_dependencies 
  ALTER COLUMN entity_id DROP NOT NULL;



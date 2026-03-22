-- Revert: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/dependency_id/alterations/alt0000001512


ALTER TABLE "agentic_db_app_public".runtime_state_dependencies 
  ALTER COLUMN dependency_id DROP NOT NULL;



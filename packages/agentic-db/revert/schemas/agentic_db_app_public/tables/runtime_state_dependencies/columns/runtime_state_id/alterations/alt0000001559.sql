-- Revert: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/runtime_state_id/alterations/alt0000001559


ALTER TABLE "agentic_db_app_public".runtime_state_dependencies 
  ALTER COLUMN runtime_state_id DROP NOT NULL;



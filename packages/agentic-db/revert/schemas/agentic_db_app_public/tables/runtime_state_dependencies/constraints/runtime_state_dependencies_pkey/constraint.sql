-- Revert: schemas/agentic_db_app_public/tables/runtime_state_dependencies/constraints/runtime_state_dependencies_pkey/constraint


ALTER TABLE "agentic_db_app_public".runtime_state_dependencies 
  DROP CONSTRAINT runtime_state_dependencies_pkey;



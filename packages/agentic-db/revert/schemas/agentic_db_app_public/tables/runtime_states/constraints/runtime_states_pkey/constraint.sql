-- Revert: schemas/agentic_db_app_public/tables/runtime_states/constraints/runtime_states_pkey/constraint


ALTER TABLE agentic_db_app_public.runtime_states 
  DROP CONSTRAINT runtime_states_pkey;



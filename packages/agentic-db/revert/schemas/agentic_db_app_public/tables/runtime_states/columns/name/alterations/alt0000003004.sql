-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/name/alterations/alt0000003004


ALTER TABLE agentic_db_app_public.runtime_states 
  ALTER COLUMN name DROP NOT NULL;



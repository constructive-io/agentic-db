-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/created_at/alterations/alt0000002485


ALTER TABLE agentic_db_app_public.runtime_states 
  ALTER COLUMN created_at DROP NOT NULL;



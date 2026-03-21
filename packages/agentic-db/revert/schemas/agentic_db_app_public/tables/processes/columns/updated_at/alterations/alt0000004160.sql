-- Revert: schemas/agentic_db_app_public/tables/processes/columns/updated_at/alterations/alt0000004160


ALTER TABLE agentic_db_app_public.processes 
  ALTER COLUMN updated_at DROP NOT NULL;



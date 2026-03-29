-- Revert: schemas/agentic_db_status_public/tables/org_steps/columns/created_at/alterations/alt0000003037


ALTER TABLE agentic_db_status_public.org_steps 
  ALTER COLUMN created_at DROP DEFAULT;



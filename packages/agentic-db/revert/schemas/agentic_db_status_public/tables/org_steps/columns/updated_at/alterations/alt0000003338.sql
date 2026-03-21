-- Revert: schemas/agentic_db_status_public/tables/org_steps/columns/updated_at/alterations/alt0000003338


ALTER TABLE agentic_db_status_public.org_steps 
  ALTER COLUMN updated_at DROP DEFAULT;



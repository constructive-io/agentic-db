-- Revert: schemas/agentic_db_status_public/tables/org_steps/columns/updated_at/column


ALTER TABLE agentic_db_status_public.org_steps 
  DROP COLUMN updated_at RESTRICT;



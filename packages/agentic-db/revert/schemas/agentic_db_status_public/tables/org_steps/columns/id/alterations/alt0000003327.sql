-- Revert: schemas/agentic_db_status_public/tables/org_steps/columns/id/alterations/alt0000003327


ALTER TABLE agentic_db_status_public.org_steps 
  ALTER COLUMN id DROP NOT NULL;



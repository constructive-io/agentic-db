-- Revert: schemas/agentic_db_status_public/tables/org_steps/columns/count/alterations/alt0000004719


ALTER TABLE agentic_db_status_public.org_steps 
  ALTER COLUMN count DROP NOT NULL;



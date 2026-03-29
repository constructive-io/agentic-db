-- Deploy: schemas/agentic_db_status_public/tables/org_steps/columns/created_at/alterations/alt0000009997
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table
-- requires: schemas/agentic_db_status_public/tables/org_steps/columns/created_at/column


ALTER TABLE agentic_db_status_public.org_steps 
  ALTER COLUMN created_at SET DEFAULT now();


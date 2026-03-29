-- Deploy: schemas/agentic_db_status_public/tables/org_steps/columns/name/alterations/alt0000003031
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table
-- requires: schemas/agentic_db_status_public/tables/org_steps/columns/name/column


ALTER TABLE agentic_db_status_public.org_steps 
  ALTER COLUMN name SET NOT NULL;


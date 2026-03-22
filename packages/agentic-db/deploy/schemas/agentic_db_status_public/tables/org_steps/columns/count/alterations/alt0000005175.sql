-- Deploy: schemas/agentic_db_status_public/tables/org_steps/columns/count/alterations/alt0000005175
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table
-- requires: schemas/agentic_db_status_public/tables/org_steps/columns/count/column


ALTER TABLE agentic_db_status_public.org_steps 
  ALTER COLUMN count SET NOT NULL;


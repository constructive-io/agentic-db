-- Deploy: schemas/agentic_db_status_public/tables/org_steps/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table


ALTER TABLE agentic_db_status_public.org_steps 
  ADD COLUMN name citext;


-- Deploy: schemas/agentic_db_status_public/tables/org_levels/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_levels/table


ALTER TABLE agentic_db_status_public.org_levels 
  ADD COLUMN created_at timestamptz;


-- Deploy: schemas/agentic_db_status_public/tables/org_achievements/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table


ALTER TABLE "agentic_db_status_public".org_achievements 
  ADD COLUMN created_at timestamptz;


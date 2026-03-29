-- Deploy: schemas/agentic_db_status_public/tables/org_achievements/columns/updated_at/alterations/alt0000010012
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table
-- requires: schemas/agentic_db_status_public/tables/org_achievements/columns/updated_at/column


ALTER TABLE agentic_db_status_public.org_achievements 
  ALTER COLUMN updated_at SET DEFAULT now();


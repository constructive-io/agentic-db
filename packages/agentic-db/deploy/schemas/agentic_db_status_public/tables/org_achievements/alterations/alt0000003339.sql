-- Deploy: schemas/agentic_db_status_public/tables/org_achievements/alterations/alt0000003339
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table


ALTER TABLE agentic_db_status_public.org_achievements 
  DISABLE ROW LEVEL SECURITY;


-- Deploy: schemas/agentic_db_status_public/tables/app_achievements/alterations/alt0000009667
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_achievements/table


ALTER TABLE agentic_db_status_public.app_achievements 
  DISABLE ROW LEVEL SECURITY;


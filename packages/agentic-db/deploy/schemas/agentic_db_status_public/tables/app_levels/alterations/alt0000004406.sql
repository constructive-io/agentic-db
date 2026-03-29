-- Deploy: schemas/agentic_db_status_public/tables/app_levels/alterations/alt0000004406
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_levels/table


ALTER TABLE agentic_db_status_public.app_levels 
  DISABLE ROW LEVEL SECURITY;


-- Deploy: schemas/agentic_db_app_public/tables/events/alterations/alt0000003717
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/embedding/column


ALTER TABLE agentic_db_app_public.events 
  DISABLE ROW LEVEL SECURITY;


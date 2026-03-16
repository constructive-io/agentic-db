-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/alterations/alt0000001354
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/columns/last_synced_at/column


ALTER TABLE "agentic_db_app_public".calendar_events 
  DISABLE ROW LEVEL SECURITY;


-- Deploy: schemas/agent_db_app_public/tables/calendar_events/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/last_synced_at/column


ALTER TABLE "agent_db_app_public".calendar_events 
  ENABLE ROW LEVEL SECURITY;


-- Deploy: schemas/agentic_db_app_public/tables/calendar_accounts/columns/last_synced_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/columns/sync_token/column


ALTER TABLE agentic_db_app_public.calendar_accounts 
  ADD COLUMN last_synced_at timestamptz;


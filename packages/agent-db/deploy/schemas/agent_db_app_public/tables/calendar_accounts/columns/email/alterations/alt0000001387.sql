-- Deploy: schemas/agent_db_app_public/tables/calendar_accounts/columns/email/alterations/alt0000001387
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/email/column
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/updated_at/alterations/alt0000001386


ALTER TABLE agent_db_app_public.calendar_accounts 
  ALTER COLUMN email SET NOT NULL;


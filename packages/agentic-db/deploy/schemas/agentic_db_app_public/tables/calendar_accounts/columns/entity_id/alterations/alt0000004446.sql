-- Deploy: schemas/agentic_db_app_public/tables/calendar_accounts/columns/entity_id/alterations/alt0000004446
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/columns/entity_id/column


ALTER TABLE agentic_db_app_public.calendar_accounts 
  ALTER COLUMN entity_id SET NOT NULL;


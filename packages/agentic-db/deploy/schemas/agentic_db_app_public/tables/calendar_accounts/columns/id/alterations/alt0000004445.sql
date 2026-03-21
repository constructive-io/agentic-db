-- Deploy: schemas/agentic_db_app_public/tables/calendar_accounts/columns/id/alterations/alt0000004445
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/columns/id/column



ALTER TABLE agentic_db_app_public.calendar_accounts 
    ALTER COLUMN id SET DEFAULT uuidv7();


-- Deploy: schemas/agentic_db_app_public/tables/calendar_accounts/constraints/calendar_accounts_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/embedding/column


ALTER TABLE agentic_db_app_public.calendar_accounts 
  ADD CONSTRAINT calendar_accounts_pkey PRIMARY KEY (id);


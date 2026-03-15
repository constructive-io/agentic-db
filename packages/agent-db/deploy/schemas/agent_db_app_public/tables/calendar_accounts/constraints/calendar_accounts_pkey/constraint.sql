-- Deploy: schemas/agent_db_app_public/tables/calendar_accounts/constraints/calendar_accounts_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/embedding/column


ALTER TABLE agent_db_app_public.calendar_accounts 
  ADD CONSTRAINT calendar_accounts_pkey PRIMARY KEY (id);


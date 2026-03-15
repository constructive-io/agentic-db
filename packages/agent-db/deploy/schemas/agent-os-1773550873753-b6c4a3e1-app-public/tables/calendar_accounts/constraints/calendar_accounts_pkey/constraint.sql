-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_accounts/constraints/calendar_accounts_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_accounts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".calendar_accounts 
  ADD CONSTRAINT calendar_accounts_pkey PRIMARY KEY (id);


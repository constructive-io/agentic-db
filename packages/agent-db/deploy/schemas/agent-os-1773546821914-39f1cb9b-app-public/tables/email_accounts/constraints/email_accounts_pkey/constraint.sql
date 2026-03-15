-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/constraints/email_accounts_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/constraints/chunks_repository_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".email_accounts 
  ADD CONSTRAINT email_accounts_pkey PRIMARY KEY (id);


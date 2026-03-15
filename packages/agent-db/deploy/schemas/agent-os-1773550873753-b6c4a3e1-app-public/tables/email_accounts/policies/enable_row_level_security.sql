-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/email_accounts/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/email_accounts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chunks/constraints/chunks_repository_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".email_accounts 
  ENABLE ROW LEVEL SECURITY;


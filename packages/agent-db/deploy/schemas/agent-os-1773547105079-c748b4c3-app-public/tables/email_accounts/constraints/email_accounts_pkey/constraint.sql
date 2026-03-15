-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/email_accounts/constraints/email_accounts_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/email_accounts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/constraints/chunks_repository_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".email_accounts 
  ADD CONSTRAINT email_accounts_pkey PRIMARY KEY (id);


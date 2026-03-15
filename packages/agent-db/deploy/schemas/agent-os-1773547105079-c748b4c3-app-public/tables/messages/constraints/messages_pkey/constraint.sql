-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/constraints/messages_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/email_accounts/columns/sync_state/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".messages 
  ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/constraints/attachments_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/columns/usage_count/alterations/alt0000002498


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".attachments 
  ADD CONSTRAINT attachments_pkey PRIMARY KEY (id);


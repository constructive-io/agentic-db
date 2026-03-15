-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/columns/id/alterations/alt0000002500
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/columns/usage_count/alterations/alt0000002498


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".attachments 
  ALTER COLUMN id SET NOT NULL;


-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/columns/url/alterations/alt0000002507
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/columns/url/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/columns/updated_at/alterations/alt0000002506


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".attachments 
  ALTER COLUMN url SET NOT NULL;


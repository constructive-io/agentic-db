-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/columns/entity_id/alterations/alt0000002502
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/attachments/columns/entity_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/columns/usage_count/alterations/alt0000002498


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".attachments 
  ALTER COLUMN entity_id SET NOT NULL;


-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/contact_id/alterations/alt0000002486
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/contact_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/updated_at/alterations/alt0000002485


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".interactions 
  ALTER COLUMN contact_id SET NOT NULL;


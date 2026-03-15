-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/columns/event_id/alterations/alt0000002570
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/columns/event_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_links/constraints/company_links_company_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_links 
  ALTER COLUMN event_id SET NOT NULL;


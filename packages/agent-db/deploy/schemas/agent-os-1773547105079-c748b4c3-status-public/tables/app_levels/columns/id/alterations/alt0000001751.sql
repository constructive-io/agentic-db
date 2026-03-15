-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_levels/columns/id/alterations/alt0000001751
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_levels/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_levels/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_levels 
  ALTER COLUMN id SET NOT NULL;


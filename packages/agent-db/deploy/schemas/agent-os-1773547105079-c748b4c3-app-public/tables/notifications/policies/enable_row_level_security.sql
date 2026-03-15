-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/columns/ref_type/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notifications 
  ENABLE ROW LEVEL SECURITY;


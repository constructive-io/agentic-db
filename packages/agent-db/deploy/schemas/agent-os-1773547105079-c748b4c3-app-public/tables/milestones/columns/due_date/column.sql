-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/columns/due_date/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/columns/name/alterations/alt0000002888


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".milestones 
  ADD COLUMN due_date timestamptz;


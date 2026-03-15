-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_levels/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_levels/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_levels 
  ADD COLUMN name citext;


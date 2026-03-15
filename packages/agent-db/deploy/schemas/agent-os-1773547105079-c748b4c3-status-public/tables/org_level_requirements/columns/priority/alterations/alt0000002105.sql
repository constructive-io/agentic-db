-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_level_requirements/columns/priority/alterations/alt0000002105
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_level_requirements/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_level_requirements/columns/priority/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_level_requirements 
  ALTER COLUMN priority SET NOT NULL;


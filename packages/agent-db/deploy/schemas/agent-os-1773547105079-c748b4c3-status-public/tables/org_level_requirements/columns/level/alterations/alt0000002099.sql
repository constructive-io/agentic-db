-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_level_requirements/columns/level/alterations/alt0000002099
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_level_requirements/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_level_requirements/columns/level/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_level_requirements 
  ALTER COLUMN level SET NOT NULL;


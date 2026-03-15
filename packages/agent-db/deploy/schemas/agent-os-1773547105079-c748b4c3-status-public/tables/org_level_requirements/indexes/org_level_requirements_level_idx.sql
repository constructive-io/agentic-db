-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_level_requirements/indexes/org_level_requirements_level_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_level_requirements/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_level_requirements/columns/level/column


CREATE INDEX org_level_requirements_level_idx ON "agent-os-1773547105079-c748b4c3-status-public".org_level_requirements USING BTREE ( level );


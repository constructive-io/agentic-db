-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_level_requirements/indexes/app_level_requirements_name_level_priority_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_level_requirements/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_level_requirements/columns/name/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_level_requirements/columns/level/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_level_requirements/columns/priority/column


CREATE INDEX app_level_requirements_name_level_priority_idx ON "agent-os-1773547105079-c748b4c3-status-public".app_level_requirements USING BTREE ( name, level, priority );


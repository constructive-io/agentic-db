-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_levels/indexes/app_levels_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_levels/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_levels/columns/created_at/column


CREATE INDEX app_levels_created_at_idx ON "agent-os-1773547105079-c748b4c3-status-public".app_levels ( created_at );


-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_levels/constraints/app_levels_name_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_levels/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_levels 
  ADD CONSTRAINT app_levels_name_key 
    UNIQUE (name);


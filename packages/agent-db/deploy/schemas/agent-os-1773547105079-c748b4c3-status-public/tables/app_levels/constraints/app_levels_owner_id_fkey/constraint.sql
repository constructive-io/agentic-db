-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_levels/constraints/app_levels_owner_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_levels/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_levels 
  ADD CONSTRAINT app_levels_owner_id_fkey 
    FOREIGN KEY(owner_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-users-public".users (id) 
    ON DELETE CASCADE;


-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/constraints/app_levels_owner_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_levels 
  ADD CONSTRAINT app_levels_owner_id_fkey 
    FOREIGN KEY(owner_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-users-public".users (id) 
    ON DELETE CASCADE;


-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_admin_grants/constraints/app_admin_grants_actor_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_admin_grants/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_admin_grants 
  ADD CONSTRAINT app_admin_grants_actor_id_fkey 
    FOREIGN KEY(actor_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-users-public".users (id) 
    ON DELETE CASCADE;


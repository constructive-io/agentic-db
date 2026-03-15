-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_admin_grants/constraints/app_admin_grants_grantor_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_admin_grants/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_admin_grants 
  ADD CONSTRAINT app_admin_grants_grantor_id_fkey 
    FOREIGN KEY(grantor_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE SET NULL;


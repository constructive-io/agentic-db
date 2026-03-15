-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_owner_grants/constraints/org_owner_grants_grantor_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_owner_grants/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_owner_grants 
  ADD CONSTRAINT org_owner_grants_grantor_id_fkey 
    FOREIGN KEY(grantor_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-users-public".users (id) 
    ON DELETE SET NULL;


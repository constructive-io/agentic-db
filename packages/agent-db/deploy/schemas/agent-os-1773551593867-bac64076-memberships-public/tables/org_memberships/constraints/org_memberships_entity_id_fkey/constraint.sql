-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/constraints/org_memberships_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_memberships 
  ADD CONSTRAINT org_memberships_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;


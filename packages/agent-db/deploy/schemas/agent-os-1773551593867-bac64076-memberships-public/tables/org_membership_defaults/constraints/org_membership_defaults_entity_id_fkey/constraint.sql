-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/constraints/org_membership_defaults_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_membership_defaults 
  ADD CONSTRAINT org_membership_defaults_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;


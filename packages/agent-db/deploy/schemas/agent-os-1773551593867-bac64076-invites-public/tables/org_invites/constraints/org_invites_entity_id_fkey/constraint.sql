-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/constraints/org_invites_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/table


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  ADD CONSTRAINT org_invites_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;


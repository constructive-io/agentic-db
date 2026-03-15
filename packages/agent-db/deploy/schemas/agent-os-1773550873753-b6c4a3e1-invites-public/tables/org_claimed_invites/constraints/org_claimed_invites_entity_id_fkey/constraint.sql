-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/constraints/org_claimed_invites_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".org_claimed_invites 
  ADD CONSTRAINT org_claimed_invites_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-users-public".users (id) 
    ON DELETE CASCADE;


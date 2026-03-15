-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/constraints/claimed_invites_receiver_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/table


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".claimed_invites 
  ADD CONSTRAINT claimed_invites_receiver_id_fkey 
    FOREIGN KEY(receiver_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;


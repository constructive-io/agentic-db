-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/constraints/invites_sender_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/table


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  ADD CONSTRAINT invites_sender_id_fkey 
    FOREIGN KEY(sender_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;


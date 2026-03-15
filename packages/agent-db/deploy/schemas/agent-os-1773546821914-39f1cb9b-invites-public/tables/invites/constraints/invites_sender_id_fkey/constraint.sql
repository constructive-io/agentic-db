-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/constraints/invites_sender_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
  ADD CONSTRAINT invites_sender_id_fkey 
    FOREIGN KEY(sender_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-users-public".users (id) 
    ON DELETE CASCADE;


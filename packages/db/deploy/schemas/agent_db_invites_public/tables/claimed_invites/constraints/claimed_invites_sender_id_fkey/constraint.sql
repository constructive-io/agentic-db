-- Deploy: schemas/agent_db_invites_public/tables/claimed_invites/constraints/claimed_invites_sender_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/table


ALTER TABLE "agent_db_invites_public".claimed_invites 
  ADD CONSTRAINT claimed_invites_sender_id_fkey 
    FOREIGN KEY(sender_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;


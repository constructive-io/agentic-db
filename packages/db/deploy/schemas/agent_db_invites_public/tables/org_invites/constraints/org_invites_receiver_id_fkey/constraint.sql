-- Deploy: schemas/agent_db_invites_public/tables/org_invites/constraints/org_invites_receiver_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/table


ALTER TABLE "agent_db_invites_public".org_invites 
  ADD CONSTRAINT org_invites_receiver_id_fkey 
    FOREIGN KEY(receiver_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;


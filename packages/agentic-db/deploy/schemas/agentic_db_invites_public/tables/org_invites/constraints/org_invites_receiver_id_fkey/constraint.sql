-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/constraints/org_invites_receiver_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_invites_public.org_invites 
  ADD CONSTRAINT org_invites_receiver_id_fkey 
    FOREIGN KEY(receiver_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;


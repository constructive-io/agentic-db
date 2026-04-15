-- Deploy: schemas/agentic_db_invites_public/tables/app_claimed_invites/constraints/app_claimed_invites_receiver_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_invites_public/tables/app_claimed_invites/table


ALTER TABLE agentic_db_invites_public.app_claimed_invites 
  ADD CONSTRAINT app_claimed_invites_receiver_id_fkey 
    FOREIGN KEY(receiver_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE SET NULL;


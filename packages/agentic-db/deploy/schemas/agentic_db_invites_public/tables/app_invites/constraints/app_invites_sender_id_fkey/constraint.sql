-- Deploy: schemas/agentic_db_invites_public/tables/app_invites/constraints/app_invites_sender_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_invites_public/tables/app_invites/table


ALTER TABLE agentic_db_invites_public.app_invites 
  ADD CONSTRAINT app_invites_sender_id_fkey 
    FOREIGN KEY(sender_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;


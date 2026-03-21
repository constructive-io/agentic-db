-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/constraints/app_memberships_actor_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table


ALTER TABLE agentic_db_memberships_public.app_memberships 
  ADD CONSTRAINT app_memberships_actor_id_fkey 
    FOREIGN KEY(actor_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;


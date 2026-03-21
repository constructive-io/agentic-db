-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/constraints/org_members_actor_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_memberships_public/tables/org_members/table


ALTER TABLE agentic_db_memberships_public.org_members 
  ADD CONSTRAINT org_members_actor_id_fkey 
    FOREIGN KEY(actor_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;


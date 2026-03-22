-- Deploy: schemas/agentic_db_memberships_public/tables/org_grants/constraints/org_grants_actor_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_memberships_public/tables/org_grants/table


ALTER TABLE agentic_db_memberships_public.org_grants 
  ADD CONSTRAINT org_grants_actor_id_fkey 
    FOREIGN KEY(actor_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;


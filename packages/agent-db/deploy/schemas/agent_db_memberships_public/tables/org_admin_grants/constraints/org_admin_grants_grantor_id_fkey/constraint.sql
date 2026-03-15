-- Deploy: schemas/agent_db_memberships_public/tables/org_admin_grants/constraints/org_admin_grants_grantor_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/table


ALTER TABLE agent_db_memberships_public.org_admin_grants 
  ADD CONSTRAINT org_admin_grants_grantor_id_fkey 
    FOREIGN KEY(grantor_id) 
    REFERENCES agent_db_users_public.users (id) 
    ON DELETE SET NULL;


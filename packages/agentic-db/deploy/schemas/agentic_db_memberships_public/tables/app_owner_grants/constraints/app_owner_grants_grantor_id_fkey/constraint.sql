-- Deploy: schemas/agentic_db_memberships_public/tables/app_owner_grants/constraints/app_owner_grants_grantor_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/app_owner_grants/table


ALTER TABLE agentic_db_memberships_public.app_owner_grants 
  ADD CONSTRAINT app_owner_grants_grantor_id_fkey 
    FOREIGN KEY(grantor_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE SET NULL;


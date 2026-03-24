-- Deploy: schemas/agentic_db_memberships_public/tables/org_membership_defaults/constraints/org_membership_defaults_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/table


ALTER TABLE agentic_db_memberships_public.org_membership_defaults 
  ADD CONSTRAINT org_membership_defaults_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;


-- Deploy: schemas/agentic_db_status_public/tables/org_levels/constraints/org_levels_owner_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_status_public/tables/org_levels/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_status_public.org_levels 
  ADD CONSTRAINT org_levels_owner_id_fkey 
    FOREIGN KEY(owner_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE SET NULL;


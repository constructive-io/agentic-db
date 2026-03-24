-- Deploy: schemas/agentic_db_users_public/tables/role_types/constraints/role_types_name_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/role_types/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_users_public.role_types 
  ADD CONSTRAINT role_types_name_key 
    UNIQUE (name);


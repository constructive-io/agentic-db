-- Deploy: schemas/agent_db_users_public/tables/users/constraints/users_type_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_users_public/tables/role_types/table


ALTER TABLE agent_db_users_public.users 
  ADD CONSTRAINT users_type_fkey 
    FOREIGN KEY(type) 
    REFERENCES agent_db_users_public.role_types (id) 
    ON DELETE CASCADE;


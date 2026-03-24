-- Deploy: schemas/agentic_db_users_public/tables/users/constraints/users_type_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_users_public/tables/role_types/table


ALTER TABLE "agentic_db_users_public".users 
  ADD CONSTRAINT users_type_fkey 
    FOREIGN KEY(type) 
    REFERENCES "agentic_db_users_public".role_types (id) 
    ON DELETE RESTRICT;


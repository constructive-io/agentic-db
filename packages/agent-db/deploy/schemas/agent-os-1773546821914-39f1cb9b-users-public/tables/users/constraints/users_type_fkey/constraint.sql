-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/constraints/users_type_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/role_types/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-users-public".users 
  ADD CONSTRAINT users_type_fkey 
    FOREIGN KEY(type) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-users-public".role_types (id) 
    ON DELETE CASCADE;


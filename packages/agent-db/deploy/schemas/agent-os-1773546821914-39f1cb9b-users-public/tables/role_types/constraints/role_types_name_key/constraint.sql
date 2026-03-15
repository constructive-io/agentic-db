-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/role_types/constraints/role_types_name_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/role_types/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-users-public".role_types 
  ADD CONSTRAINT role_types_name_key 
    UNIQUE (name);


-- Deploy: schemas/agent-os-1773551593867-bac64076-users-public/tables/role_types/constraints/role_types_name_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-users-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/role_types/table


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".role_types 
  ADD CONSTRAINT role_types_name_key 
    UNIQUE (name);


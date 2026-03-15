-- Deploy: schemas/agent_db_users_public/tables/role_types/constraints/role_types_name_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/role_types/table


ALTER TABLE "agent_db_users_public".role_types 
  ADD CONSTRAINT role_types_name_key 
    UNIQUE (name);


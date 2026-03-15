-- Deploy: schemas/agent_db_limits_public/tables/org_limits/constraints/org_limits_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_limits_public/tables/org_limits/table


ALTER TABLE agent_db_limits_public.org_limits 
  ADD CONSTRAINT org_limits_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agent_db_users_public.users (id) 
    ON DELETE CASCADE;


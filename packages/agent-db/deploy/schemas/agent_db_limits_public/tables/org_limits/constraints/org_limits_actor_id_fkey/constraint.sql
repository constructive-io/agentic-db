-- Deploy: schemas/agent_db_limits_public/tables/org_limits/constraints/org_limits_actor_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_limits_public/tables/org_limits/table


ALTER TABLE agent_db_limits_public.org_limits 
  ADD CONSTRAINT org_limits_actor_id_fkey 
    FOREIGN KEY(actor_id) 
    REFERENCES agent_db_users_public.users (id) 
    ON DELETE CASCADE;


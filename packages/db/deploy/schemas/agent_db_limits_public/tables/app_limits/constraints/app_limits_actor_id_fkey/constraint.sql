-- Deploy: schemas/agent_db_limits_public/tables/app_limits/constraints/app_limits_actor_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_limits_public/tables/app_limits/table


ALTER TABLE "agent_db_limits_public".app_limits 
  ADD CONSTRAINT app_limits_actor_id_fkey 
    FOREIGN KEY(actor_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;


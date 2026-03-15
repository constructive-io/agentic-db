-- Deploy: schemas/agent_db_limits_public/tables/app_limits/constraints/app_limits_name_actor_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limits/table


ALTER TABLE "agent_db_limits_public".app_limits 
  ADD CONSTRAINT app_limits_name_actor_id_key 
    UNIQUE (name, actor_id);


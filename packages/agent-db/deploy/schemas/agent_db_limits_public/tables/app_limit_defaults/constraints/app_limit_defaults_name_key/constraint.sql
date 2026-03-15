-- Deploy: schemas/agent_db_limits_public/tables/app_limit_defaults/constraints/app_limit_defaults_name_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limit_defaults/table


ALTER TABLE agent_db_limits_public.app_limit_defaults 
  ADD CONSTRAINT app_limit_defaults_name_key 
    UNIQUE (name);


-- Deploy: schemas/agent_db_limits_public/tables/org_limit_defaults/constraints/org_limit_defaults_name_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limit_defaults/table


ALTER TABLE "agent_db_limits_public".org_limit_defaults 
  ADD CONSTRAINT org_limit_defaults_name_key 
    UNIQUE (name);


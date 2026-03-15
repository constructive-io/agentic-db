-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limits/constraints/app_limits_name_actor_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limits/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-limits-public".app_limits 
  ADD CONSTRAINT app_limits_name_actor_id_key 
    UNIQUE (name, actor_id);


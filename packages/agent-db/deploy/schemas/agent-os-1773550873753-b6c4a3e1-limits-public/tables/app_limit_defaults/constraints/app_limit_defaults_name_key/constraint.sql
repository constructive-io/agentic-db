-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limit_defaults/constraints/app_limit_defaults_name_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limit_defaults/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-limits-public".app_limit_defaults 
  ADD CONSTRAINT app_limit_defaults_name_key 
    UNIQUE (name);


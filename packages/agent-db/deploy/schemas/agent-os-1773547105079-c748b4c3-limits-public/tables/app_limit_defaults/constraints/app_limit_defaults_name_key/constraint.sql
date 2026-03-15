-- Deploy: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/app_limit_defaults/constraints/app_limit_defaults_name_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/app_limit_defaults/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".app_limit_defaults 
  ADD CONSTRAINT app_limit_defaults_name_key 
    UNIQUE (name);


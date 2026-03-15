-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limit_defaults/constraints/app_limit_defaults_name_key/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-limits-public".app_limit_defaults 
  DROP CONSTRAINT app_limit_defaults_name_key;



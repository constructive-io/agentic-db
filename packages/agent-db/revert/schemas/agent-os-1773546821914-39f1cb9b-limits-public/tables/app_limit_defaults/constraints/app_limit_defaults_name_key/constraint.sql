-- Revert: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limit_defaults/constraints/app_limit_defaults_name_key/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".app_limit_defaults 
  DROP CONSTRAINT app_limit_defaults_name_key;



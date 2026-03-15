-- Revert: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limit_defaults/constraints/app_limit_defaults_name_key/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".app_limit_defaults 
  DROP CONSTRAINT app_limit_defaults_name_key;



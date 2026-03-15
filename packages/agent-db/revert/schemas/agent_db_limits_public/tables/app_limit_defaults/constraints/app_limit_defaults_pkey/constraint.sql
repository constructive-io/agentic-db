-- Revert: schemas/agent_db_limits_public/tables/app_limit_defaults/constraints/app_limit_defaults_pkey/constraint


ALTER TABLE agent_db_limits_public.app_limit_defaults 
  DROP CONSTRAINT app_limit_defaults_pkey;



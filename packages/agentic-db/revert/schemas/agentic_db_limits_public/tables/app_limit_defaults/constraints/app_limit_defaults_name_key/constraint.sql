-- Revert: schemas/agentic_db_limits_public/tables/app_limit_defaults/constraints/app_limit_defaults_name_key/constraint


ALTER TABLE "agentic_db_limits_public".app_limit_defaults 
  DROP CONSTRAINT app_limit_defaults_name_key;



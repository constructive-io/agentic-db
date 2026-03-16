-- Revert: schemas/agent_db_limits_public/tables/org_limit_defaults/constraints/org_limit_defaults_name_key/constraint


ALTER TABLE "agent_db_limits_public".org_limit_defaults 
  DROP CONSTRAINT org_limit_defaults_name_key;



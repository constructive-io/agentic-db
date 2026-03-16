-- Revert: schemas/agent_db_limits_public/tables/app_limits/constraints/app_limits_pkey/constraint


ALTER TABLE "agent_db_limits_public".app_limits 
  DROP CONSTRAINT app_limits_pkey;



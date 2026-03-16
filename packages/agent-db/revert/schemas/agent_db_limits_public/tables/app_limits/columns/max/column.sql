-- Revert: schemas/agent_db_limits_public/tables/app_limits/columns/max/column


ALTER TABLE "agent_db_limits_public".app_limits 
  DROP COLUMN max RESTRICT;



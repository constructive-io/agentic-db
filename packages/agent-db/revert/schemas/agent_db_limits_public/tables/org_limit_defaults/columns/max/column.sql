-- Revert: schemas/agent_db_limits_public/tables/org_limit_defaults/columns/max/column


ALTER TABLE agent_db_limits_public.org_limit_defaults 
  DROP COLUMN max RESTRICT;



-- Revert: schemas/agent_db_limits_public/tables/org_limit_defaults/columns/id/column


ALTER TABLE agent_db_limits_public.org_limit_defaults 
  DROP COLUMN id RESTRICT;



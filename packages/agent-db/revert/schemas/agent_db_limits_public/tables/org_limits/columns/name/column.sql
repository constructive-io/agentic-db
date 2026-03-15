-- Revert: schemas/agent_db_limits_public/tables/org_limits/columns/name/column


ALTER TABLE agent_db_limits_public.org_limits 
  DROP COLUMN name RESTRICT;



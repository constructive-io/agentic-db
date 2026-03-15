-- Revert: schemas/agent_db_limits_public/tables/org_limits/columns/num/column


ALTER TABLE agent_db_limits_public.org_limits 
  DROP COLUMN num RESTRICT;



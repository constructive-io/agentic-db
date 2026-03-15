-- Revert: schemas/agent_db_status_public/tables/org_steps/columns/name/column


ALTER TABLE agent_db_status_public.org_steps 
  DROP COLUMN name RESTRICT;



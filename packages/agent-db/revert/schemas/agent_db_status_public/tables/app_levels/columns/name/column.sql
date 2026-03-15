-- Revert: schemas/agent_db_status_public/tables/app_levels/columns/name/column


ALTER TABLE agent_db_status_public.app_levels 
  DROP COLUMN name RESTRICT;



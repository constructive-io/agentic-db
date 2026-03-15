-- Revert: schemas/agent_db_status_public/tables/app_levels/columns/owner_id/column


ALTER TABLE agent_db_status_public.app_levels 
  DROP COLUMN owner_id RESTRICT;



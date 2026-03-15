-- Revert: schemas/agent_db_app_public/tables/venues/columns/status/column


ALTER TABLE agent_db_app_public.venues 
  DROP COLUMN status RESTRICT;



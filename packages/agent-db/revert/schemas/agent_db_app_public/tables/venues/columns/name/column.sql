-- Revert: schemas/agent_db_app_public/tables/venues/columns/name/column


ALTER TABLE agent_db_app_public.venues 
  DROP COLUMN name RESTRICT;



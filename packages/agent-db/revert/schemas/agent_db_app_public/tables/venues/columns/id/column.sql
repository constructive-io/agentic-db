-- Revert: schemas/agent_db_app_public/tables/venues/columns/id/column


ALTER TABLE agent_db_app_public.venues 
  DROP COLUMN id RESTRICT;



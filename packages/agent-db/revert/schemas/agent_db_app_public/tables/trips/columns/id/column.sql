-- Revert: schemas/agent_db_app_public/tables/trips/columns/id/column


ALTER TABLE agent_db_app_public.trips 
  DROP COLUMN id RESTRICT;



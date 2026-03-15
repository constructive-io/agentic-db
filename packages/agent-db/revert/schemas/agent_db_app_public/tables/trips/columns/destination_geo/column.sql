-- Revert: schemas/agent_db_app_public/tables/trips/columns/destination_geo/column


ALTER TABLE agent_db_app_public.trips 
  DROP COLUMN destination_geo RESTRICT;



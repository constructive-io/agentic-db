-- Revert: schemas/agent_db_app_public/tables/trips/columns/entity_id/column


ALTER TABLE agent_db_app_public.trips 
  DROP COLUMN entity_id RESTRICT;



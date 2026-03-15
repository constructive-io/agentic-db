-- Revert: schemas/agent_db_app_public/tables/trips/columns/created_at/column


ALTER TABLE agent_db_app_public.trips 
  DROP COLUMN created_at RESTRICT;



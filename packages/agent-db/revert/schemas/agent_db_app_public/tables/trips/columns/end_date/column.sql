-- Revert: schemas/agent_db_app_public/tables/trips/columns/end_date/column


ALTER TABLE agent_db_app_public.trips 
  DROP COLUMN end_date RESTRICT;



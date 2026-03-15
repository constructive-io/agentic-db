-- Revert: schemas/agent_db_app_public/tables/trips/columns/notes/column


ALTER TABLE agent_db_app_public.trips 
  DROP COLUMN notes RESTRICT;



-- Revert: schemas/agent_db_app_public/tables/trips/columns/created_at/alterations/alt0000001467


ALTER TABLE agent_db_app_public.trips 
  ALTER COLUMN created_at DROP NOT NULL;



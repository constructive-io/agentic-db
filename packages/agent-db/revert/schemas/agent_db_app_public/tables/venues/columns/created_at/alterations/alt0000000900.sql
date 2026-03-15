-- Revert: schemas/agent_db_app_public/tables/venues/columns/created_at/alterations/alt0000000900


ALTER TABLE agent_db_app_public.venues 
  ALTER COLUMN created_at DROP NOT NULL;



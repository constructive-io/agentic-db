-- Revert: schemas/agent_db_app_public/tables/venues/columns/price_level/column


ALTER TABLE agent_db_app_public.venues 
  DROP COLUMN price_level RESTRICT;



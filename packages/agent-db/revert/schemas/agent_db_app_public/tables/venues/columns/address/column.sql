-- Revert: schemas/agent_db_app_public/tables/venues/columns/address/column


ALTER TABLE agent_db_app_public.venues 
  DROP COLUMN address RESTRICT;



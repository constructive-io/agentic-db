-- Revert: schemas/agent_db_app_public/tables/venues/columns/category/column


ALTER TABLE agent_db_app_public.venues 
  DROP COLUMN category RESTRICT;



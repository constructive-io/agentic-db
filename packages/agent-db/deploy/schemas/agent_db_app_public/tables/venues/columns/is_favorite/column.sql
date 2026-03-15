-- Deploy: schemas/agent_db_app_public/tables/venues/columns/is_favorite/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/price_level/column


ALTER TABLE agent_db_app_public.venues 
  ADD COLUMN is_favorite bool;


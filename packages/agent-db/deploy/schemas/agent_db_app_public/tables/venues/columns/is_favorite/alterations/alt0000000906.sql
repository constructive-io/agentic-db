-- Deploy: schemas/agent_db_app_public/tables/venues/columns/is_favorite/alterations/alt0000000906
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/is_favorite/column
-- requires: schemas/agent_db_app_public/tables/venues/columns/price_level/column



ALTER TABLE agent_db_app_public.venues 
    ALTER COLUMN is_favorite SET DEFAULT false;


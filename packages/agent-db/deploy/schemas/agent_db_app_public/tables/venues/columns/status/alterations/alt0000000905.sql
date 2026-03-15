-- Deploy: schemas/agent_db_app_public/tables/venues/columns/status/alterations/alt0000000905
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/status/column
-- requires: schemas/agent_db_app_public/tables/venues/columns/category/column



ALTER TABLE agent_db_app_public.venues 
    ALTER COLUMN status SET DEFAULT 'potential';


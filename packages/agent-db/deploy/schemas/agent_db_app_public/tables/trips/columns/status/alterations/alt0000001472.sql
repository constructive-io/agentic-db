-- Deploy: schemas/agent_db_app_public/tables/trips/columns/status/alterations/alt0000001472
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/trips/columns/status/column
-- requires: schemas/agent_db_app_public/tables/trips/columns/end_date/column



ALTER TABLE agent_db_app_public.trips 
    ALTER COLUMN status SET DEFAULT 'planned';


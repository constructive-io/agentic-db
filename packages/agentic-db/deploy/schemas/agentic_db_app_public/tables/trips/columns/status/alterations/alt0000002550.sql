-- Deploy: schemas/agentic_db_app_public/tables/trips/columns/status/alterations/alt0000002550
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/trips/columns/end_date/column



ALTER TABLE "agentic_db_app_public".trips 
    ALTER COLUMN status SET DEFAULT 'planned';


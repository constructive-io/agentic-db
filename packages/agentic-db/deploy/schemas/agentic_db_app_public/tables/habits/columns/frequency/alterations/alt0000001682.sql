-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/frequency/alterations/alt0000001682
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/frequency/column
-- requires: schemas/agentic_db_app_public/tables/habits/columns/description/column



ALTER TABLE "agentic_db_app_public".habits 
    ALTER COLUMN frequency SET DEFAULT 'daily';


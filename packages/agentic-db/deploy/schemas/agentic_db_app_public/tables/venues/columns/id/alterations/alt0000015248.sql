-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/id/alterations/alt0000015248
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/id/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous



ALTER TABLE agentic_db_app_public.venues 
    ALTER COLUMN id SET DEFAULT uuidv7();


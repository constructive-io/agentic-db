-- Deploy: schemas/agentic_db_app_public/tables/images/columns/id/alterations/alt0000000656
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/id/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous



ALTER TABLE agentic_db_app_public.images 
    ALTER COLUMN id SET DEFAULT uuidv7();


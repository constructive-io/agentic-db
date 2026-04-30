-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/id/alterations/alt0000000307
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx



ALTER TABLE agentic_db_app_public.tasks 
    ALTER COLUMN id SET DEFAULT uuidv7();


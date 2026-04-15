-- Deploy: schemas/agentic_db_status_public/tables/app_achievements/columns/id/alterations/alt0000012184
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_achievements/table
-- requires: schemas/agentic_db_status_public/tables/app_achievements/columns/id/column



ALTER TABLE agentic_db_status_public.app_achievements 
    ALTER COLUMN id SET DEFAULT uuidv7();


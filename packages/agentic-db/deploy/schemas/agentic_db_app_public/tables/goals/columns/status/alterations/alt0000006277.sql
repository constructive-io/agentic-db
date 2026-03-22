-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/status/alterations/alt0000006277
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/goals/columns/category/column



ALTER TABLE agentic_db_app_public.goals 
    ALTER COLUMN status SET DEFAULT 'active';


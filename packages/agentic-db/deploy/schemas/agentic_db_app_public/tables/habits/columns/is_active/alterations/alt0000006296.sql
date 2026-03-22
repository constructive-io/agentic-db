-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/is_active/alterations/alt0000006296
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/is_active/column
-- requires: schemas/agentic_db_app_public/tables/habits/columns/best_streak/alterations/alt0000006295



ALTER TABLE agentic_db_app_public.habits 
    ALTER COLUMN is_active SET DEFAULT true;


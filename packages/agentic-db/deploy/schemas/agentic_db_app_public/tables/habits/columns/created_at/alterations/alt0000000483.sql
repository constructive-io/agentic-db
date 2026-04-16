-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/created_at/alterations/alt0000000483
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx



ALTER TABLE agentic_db_app_public.habits 
    ALTER COLUMN created_at SET DEFAULT now();


-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/active_count/alterations/alt0000003979
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/overview/column
-- requires: schemas/agentic_db_app_public/tables/memories/columns/active_count/column



ALTER TABLE agentic_db_app_public.memories 
    ALTER COLUMN active_count SET DEFAULT 0;


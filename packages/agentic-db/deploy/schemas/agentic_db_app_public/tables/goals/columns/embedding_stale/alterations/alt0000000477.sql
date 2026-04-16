-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/embedding_stale/alterations/alt0000000477
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/embedding_stale/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx



ALTER TABLE agentic_db_app_public.goals 
    ALTER COLUMN embedding_stale SET DEFAULT true;


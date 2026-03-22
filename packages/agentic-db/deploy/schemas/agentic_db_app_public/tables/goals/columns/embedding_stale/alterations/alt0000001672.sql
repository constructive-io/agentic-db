-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/embedding_stale/alterations/alt0000001672
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/goals/columns/embedding_stale/column



ALTER TABLE "agentic_db_app_public".goals 
    ALTER COLUMN embedding_stale SET DEFAULT true;


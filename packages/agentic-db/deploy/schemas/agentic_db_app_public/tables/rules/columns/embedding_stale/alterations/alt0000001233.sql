-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/embedding_stale/alterations/alt0000001233
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/rules/columns/embedding_stale/column



ALTER TABLE "agentic_db_app_public".rules 
    ALTER COLUMN embedding_stale SET DEFAULT true;


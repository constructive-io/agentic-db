-- Deploy: schemas/agentic_db_app_public/tables/place_chunks/columns/embedding_stale/alterations/alt0000006325
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/place_chunks/table
-- requires: schemas/agentic_db_app_public/tables/place_chunks/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/place_chunks/columns/embedding_stale/column



ALTER TABLE agentic_db_app_public.place_chunks 
    ALTER COLUMN embedding_stale SET DEFAULT true;


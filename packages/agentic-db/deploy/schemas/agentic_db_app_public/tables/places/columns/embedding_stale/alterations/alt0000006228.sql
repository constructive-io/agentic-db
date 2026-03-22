-- Deploy: schemas/agentic_db_app_public/tables/places/columns/embedding_stale/alterations/alt0000006228
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/places/columns/embedding_stale/column



ALTER TABLE agentic_db_app_public.places 
    ALTER COLUMN embedding_stale SET DEFAULT true;


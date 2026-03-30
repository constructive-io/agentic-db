-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/metadata/alterations/alt0000001781
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/metadata/column



ALTER TABLE "agentic_db_app_public".hiking_trails_chunks 
    ALTER COLUMN metadata SET DEFAULT '{}'::jsonb;


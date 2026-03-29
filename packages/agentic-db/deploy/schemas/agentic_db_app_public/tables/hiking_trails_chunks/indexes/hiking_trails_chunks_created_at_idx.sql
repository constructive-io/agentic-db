-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails_chunks/indexes/hiking_trails_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/created_at/column


CREATE INDEX hiking_trails_chunks_created_at_idx ON agentic_db_app_public.hiking_trails_chunks ( created_at );


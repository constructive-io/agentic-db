-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails_chunks/indexes/hiking_trails_chunks_hiking_trails_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/hiking_trails_id/column


CREATE INDEX hiking_trails_chunks_hiking_trails_id_idx ON agentic_db_app_public.hiking_trails_chunks USING BTREE ( hiking_trails_id );


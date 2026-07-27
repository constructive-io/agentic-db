-- Deploy: schemas/agentic_db_app_public/tables/notes_chunks/indexes/notes_chunks_content_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/table
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/columns/content/column


CREATE INDEX notes_chunks_content_bm25_idx ON agentic_db_app_public.notes_chunks USING bm25 ( content ) WITH ( text_config = english );


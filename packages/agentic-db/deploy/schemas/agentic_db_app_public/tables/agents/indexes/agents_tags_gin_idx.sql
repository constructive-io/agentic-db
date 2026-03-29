-- Deploy: schemas/agentic_db_app_public/tables/agents/indexes/agents_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


CREATE INDEX agents_tags_gin_idx ON agentic_db_app_public.agents USING GIN ( tags );


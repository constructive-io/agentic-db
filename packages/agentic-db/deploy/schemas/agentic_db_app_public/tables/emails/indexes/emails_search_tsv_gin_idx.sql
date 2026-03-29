-- Deploy: schemas/agentic_db_app_public/tables/emails/indexes/emails_search_tsv_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails/columns/search_tsv/column
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


CREATE INDEX emails_search_tsv_gin_idx ON agentic_db_app_public.emails USING GIN ( search_tsv );


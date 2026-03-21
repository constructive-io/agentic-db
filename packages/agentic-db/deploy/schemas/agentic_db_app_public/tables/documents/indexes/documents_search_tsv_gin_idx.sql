-- Deploy: schemas/agentic_db_app_public/tables/documents/indexes/documents_search_tsv_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/trips/indexes/trips_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/documents/columns/search_tsv/column


CREATE INDEX documents_search_tsv_gin_idx ON "agentic_db_app_public".documents USING GIN ( search_tsv );


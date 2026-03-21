-- Deploy: schemas/agentic_db_app_public/tables/documents/indexes/documents_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


CREATE INDEX documents_tags_gin_idx ON agentic_db_app_public.documents USING GIN ( tags );


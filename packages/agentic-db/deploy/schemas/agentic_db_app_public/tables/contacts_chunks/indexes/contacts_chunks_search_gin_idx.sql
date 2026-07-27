-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/indexes/contacts_chunks_search_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/columns/search/column


CREATE INDEX contacts_chunks_search_gin_idx ON agentic_db_app_public.contacts_chunks USING GIN ( search );


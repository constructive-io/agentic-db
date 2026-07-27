-- Deploy: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_search_tsv_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/search_tsv/column


CREATE INDEX contacts_search_tsv_gin_idx ON agentic_db_app_public.contacts USING GIN ( search_tsv );


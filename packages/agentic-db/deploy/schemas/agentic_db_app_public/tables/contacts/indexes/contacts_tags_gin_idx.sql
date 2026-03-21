-- Deploy: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/notes/indexes/notes_content_bm25_idx


CREATE INDEX contacts_tags_gin_idx ON agentic_db_app_public.contacts USING GIN ( tags );


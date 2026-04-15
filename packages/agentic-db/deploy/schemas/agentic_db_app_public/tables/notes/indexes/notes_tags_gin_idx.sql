-- Deploy: schemas/agentic_db_app_public/tables/notes/indexes/notes_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/tags/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


CREATE INDEX notes_tags_gin_idx ON agentic_db_app_public.notes USING GIN ( tags );


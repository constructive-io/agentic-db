-- Deploy: schemas/agentic_db_app_public/tables/files/indexes/files_language_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/files/table
-- requires: schemas/agentic_db_app_public/tables/files/indexes/files_path_idx
-- requires: schemas/agentic_db_app_public/tables/files/columns/language/column


CREATE INDEX files_language_idx ON agentic_db_app_public.files USING BTREE ( language );


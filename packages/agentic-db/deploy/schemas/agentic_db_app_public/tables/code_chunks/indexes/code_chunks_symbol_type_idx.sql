-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_symbol_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/symbol_type/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE INDEX code_chunks_symbol_type_idx ON agentic_db_app_public.code_chunks USING BTREE ( symbol_type );


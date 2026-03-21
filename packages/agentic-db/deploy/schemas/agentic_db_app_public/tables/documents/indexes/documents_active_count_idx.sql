-- Deploy: schemas/agentic_db_app_public/tables/documents/indexes/documents_active_count_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/active_count/column
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_is_read_idx


CREATE INDEX documents_active_count_idx ON "agentic_db_app_public".documents USING BTREE ( active_count );


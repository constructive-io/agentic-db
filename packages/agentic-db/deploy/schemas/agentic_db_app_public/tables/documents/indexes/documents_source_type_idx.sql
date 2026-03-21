-- Deploy: schemas/agentic_db_app_public/tables/documents/indexes/documents_source_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/source_type/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_merchant_idx


CREATE INDEX documents_source_type_idx ON agentic_db_app_public.documents USING BTREE ( source_type );


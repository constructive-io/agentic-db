-- Deploy: schemas/agent_db_app_public/tables/documents/indexes/documents_source_type_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/source_type/column
-- requires: schemas/agent_db_app_public/tables/expenses/indexes/expenses_merchant_idx


CREATE INDEX documents_source_type_idx ON agent_db_app_public.documents USING BTREE ( source_type );


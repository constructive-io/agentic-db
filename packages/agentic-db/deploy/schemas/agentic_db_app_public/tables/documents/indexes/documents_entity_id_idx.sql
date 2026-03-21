-- Deploy: schemas/agentic_db_app_public/tables/documents/indexes/documents_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/documents/columns/entity_id/column


CREATE INDEX documents_entity_id_idx ON agentic_db_app_public.documents USING BTREE ( entity_id );


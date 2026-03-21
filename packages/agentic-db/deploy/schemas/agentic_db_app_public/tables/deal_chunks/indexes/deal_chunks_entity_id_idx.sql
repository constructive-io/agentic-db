-- Deploy: schemas/agentic_db_app_public/tables/deal_chunks/indexes/deal_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/company_chunks/columns/embedding/column


CREATE INDEX deal_chunks_entity_id_idx ON agentic_db_app_public.deal_chunks USING BTREE ( entity_id );


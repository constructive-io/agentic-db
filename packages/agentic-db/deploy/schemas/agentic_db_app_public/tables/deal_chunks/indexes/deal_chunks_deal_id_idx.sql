-- Deploy: schemas/agentic_db_app_public/tables/deal_chunks/indexes/deal_chunks_deal_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/columns/deal_id/column
-- requires: schemas/agentic_db_app_public/tables/company_chunks/indexes/company_chunks_company_id_idx


CREATE INDEX deal_chunks_deal_id_idx ON agentic_db_app_public.deal_chunks USING BTREE ( deal_id );


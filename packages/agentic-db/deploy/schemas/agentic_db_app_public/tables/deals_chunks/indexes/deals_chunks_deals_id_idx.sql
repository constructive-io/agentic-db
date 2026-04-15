-- Deploy: schemas/agentic_db_app_public/tables/deals_chunks/indexes/deals_chunks_deals_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/columns/deals_id/column


CREATE INDEX deals_chunks_deals_id_idx ON "agentic_db_app_public".deals_chunks USING BTREE ( deals_id );


-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_deal_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/columns/deal_id/column


CREATE INDEX touchpoints_deal_id_idx ON "agentic_db_app_public".touchpoints USING BTREE ( deal_id );


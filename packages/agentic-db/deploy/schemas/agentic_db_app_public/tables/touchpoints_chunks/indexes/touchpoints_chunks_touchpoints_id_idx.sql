-- Deploy: schemas/agentic_db_app_public/tables/touchpoints_chunks/indexes/touchpoints_chunks_touchpoints_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/touchpoints_id/column


CREATE INDEX touchpoints_chunks_touchpoints_id_idx ON "agentic_db_app_public".touchpoints_chunks USING BTREE ( touchpoints_id );


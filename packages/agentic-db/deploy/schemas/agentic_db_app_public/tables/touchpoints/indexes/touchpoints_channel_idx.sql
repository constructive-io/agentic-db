-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/columns/channel/column


CREATE INDEX touchpoints_channel_idx ON "agentic_db_app_public".touchpoints USING BTREE ( channel );


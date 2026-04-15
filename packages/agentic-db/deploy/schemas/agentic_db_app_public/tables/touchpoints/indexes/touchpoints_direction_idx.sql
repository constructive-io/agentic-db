-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_direction_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/columns/direction/column


CREATE INDEX touchpoints_direction_idx ON "agentic_db_app_public".touchpoints USING BTREE ( direction );


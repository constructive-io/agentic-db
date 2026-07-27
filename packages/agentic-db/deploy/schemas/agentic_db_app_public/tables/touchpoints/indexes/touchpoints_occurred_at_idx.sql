-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_occurred_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/columns/occurred_at/column


CREATE INDEX touchpoints_occurred_at_idx ON agentic_db_app_public.touchpoints USING BTREE ( occurred_at );


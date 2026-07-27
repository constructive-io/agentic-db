-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_event_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/columns/event_id/column


CREATE INDEX touchpoints_event_id_idx ON agentic_db_app_public.touchpoints USING BTREE ( event_id );


-- Deploy: schemas/agentic_db_app_public/tables/calendar_events_chunks/alterations/alt0000011327
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


COMMENT ON TABLE agentic_db_app_public.calendar_events_chunks IS E'@@chunksOf {"parent_fk": "calendar_events_id", "parent_table": "calendar_events"}';


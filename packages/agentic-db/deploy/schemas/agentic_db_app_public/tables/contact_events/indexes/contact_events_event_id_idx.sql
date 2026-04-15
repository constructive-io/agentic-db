-- Deploy: schemas/agentic_db_app_public/tables/contact_events/indexes/contact_events_event_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_events/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contact_events/columns/event_id/column


CREATE INDEX contact_events_event_id_idx ON agentic_db_app_public.contact_events USING BTREE ( event_id );


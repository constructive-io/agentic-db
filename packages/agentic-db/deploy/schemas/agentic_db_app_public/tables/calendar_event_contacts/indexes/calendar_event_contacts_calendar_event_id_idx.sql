-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_contacts/indexes/calendar_event_contacts_calendar_event_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/columns/calendar_event_id/column


CREATE INDEX calendar_event_contacts_calendar_event_id_idx ON agentic_db_app_public.calendar_event_contacts USING BTREE ( calendar_event_id );


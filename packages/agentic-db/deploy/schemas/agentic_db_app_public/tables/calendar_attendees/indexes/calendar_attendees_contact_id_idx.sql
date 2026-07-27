-- Deploy: schemas/agentic_db_app_public/tables/calendar_attendees/indexes/calendar_attendees_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/columns/contact_id/column


CREATE INDEX calendar_attendees_contact_id_idx ON agentic_db_app_public.calendar_attendees USING BTREE ( contact_id );


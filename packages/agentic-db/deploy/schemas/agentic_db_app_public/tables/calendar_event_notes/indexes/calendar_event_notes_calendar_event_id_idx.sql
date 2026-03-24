-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_notes/indexes/calendar_event_notes_calendar_event_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/columns/calendar_event_id/column
-- requires: schemas/agentic_db_app_public/tables/email_notes/policies/auth_del_entity_membership/policy


CREATE INDEX calendar_event_notes_calendar_event_id_idx ON "agentic_db_app_public".calendar_event_notes USING BTREE ( calendar_event_id );


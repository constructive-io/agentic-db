-- Deploy: schemas/agentic_db_app_public/tables/calendars/indexes/calendars_provider_calendar_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendars/table
-- requires: schemas/agentic_db_app_public/tables/calendars/columns/provider_calendar_id/column


CREATE INDEX calendars_provider_calendar_id_idx ON agentic_db_app_public.calendars USING BTREE ( provider_calendar_id );


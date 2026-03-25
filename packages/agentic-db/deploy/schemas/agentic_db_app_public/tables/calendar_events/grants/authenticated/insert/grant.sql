-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


GRANT INSERT ON "agentic_db_app_public".calendar_events TO authenticated;


-- Deploy: schemas/agentic_db_app_public/tables/calendars/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendars/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


GRANT DELETE ON agentic_db_app_public.calendars TO authenticated;


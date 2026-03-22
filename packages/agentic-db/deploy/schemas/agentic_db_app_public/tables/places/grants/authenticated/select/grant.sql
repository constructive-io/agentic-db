-- Deploy: schemas/agentic_db_app_public/tables/places/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/trips/indexes/trips_location_gist_idx


GRANT SELECT ON agentic_db_app_public.places TO authenticated;


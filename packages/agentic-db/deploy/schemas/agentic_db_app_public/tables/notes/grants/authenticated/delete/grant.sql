-- Deploy: schemas/agentic_db_app_public/tables/notes/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/venues/indexes/venues_location_gist_idx


GRANT DELETE ON "agentic_db_app_public".notes TO authenticated;


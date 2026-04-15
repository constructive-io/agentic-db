-- Deploy: schemas/agentic_db_app_public/tables/venue_images/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_images/table


GRANT INSERT ON "agentic_db_app_public".venue_images TO authenticated;


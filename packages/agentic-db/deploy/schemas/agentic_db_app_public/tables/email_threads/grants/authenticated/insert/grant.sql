-- Deploy: schemas/agentic_db_app_public/tables/email_threads/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


GRANT INSERT ON "agentic_db_app_public".email_threads TO authenticated;


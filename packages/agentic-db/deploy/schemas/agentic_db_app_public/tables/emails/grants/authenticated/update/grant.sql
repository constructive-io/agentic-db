-- Deploy: schemas/agentic_db_app_public/tables/emails/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


GRANT UPDATE ON "agentic_db_app_public".emails TO authenticated;


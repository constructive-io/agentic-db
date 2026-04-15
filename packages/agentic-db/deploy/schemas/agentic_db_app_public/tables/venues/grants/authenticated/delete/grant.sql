-- Deploy: schemas/agentic_db_app_public/tables/venues/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table


GRANT DELETE ON "agentic_db_app_public".venues TO authenticated;


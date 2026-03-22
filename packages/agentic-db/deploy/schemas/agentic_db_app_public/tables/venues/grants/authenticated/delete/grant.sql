-- Deploy: schemas/agentic_db_app_public/tables/venues/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/events/alterations/alt0000000913


GRANT DELETE ON "agentic_db_app_public".venues TO authenticated;


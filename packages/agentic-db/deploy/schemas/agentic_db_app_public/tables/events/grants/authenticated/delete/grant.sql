-- Deploy: schemas/agentic_db_app_public/tables/events/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table


GRANT DELETE ON "agentic_db_app_public".events TO authenticated;


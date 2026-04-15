-- Deploy: schemas/agentic_db_app_public/tables/event_images/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_images/table


GRANT DELETE ON "agentic_db_app_public".event_images TO authenticated;


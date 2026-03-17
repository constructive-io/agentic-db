-- Deploy: schemas/agentic_db_app_public/tables/trips/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/notes/column


GRANT DELETE ON "agentic_db_app_public".trips TO authenticated;


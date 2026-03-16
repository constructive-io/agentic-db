-- Deploy: schemas/agent_db_app_public/tables/trips/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/notes/column


GRANT UPDATE ON "agent_db_app_public".trips TO authenticated;


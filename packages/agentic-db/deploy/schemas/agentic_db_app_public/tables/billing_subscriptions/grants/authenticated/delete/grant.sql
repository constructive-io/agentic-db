-- Deploy: schemas/agentic_db_app_public/tables/billing_subscriptions/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agentic_db_app_public/tables/user_settings/columns/category/column


GRANT DELETE ON "agentic_db_app_public".billing_subscriptions TO authenticated;


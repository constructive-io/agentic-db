-- Deploy: schemas/agent_db_app_public/tables/billing_subscriptions/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agent_db_app_public/tables/user_settings/columns/category/column


GRANT DELETE ON agent_db_app_public.billing_subscriptions TO authenticated;


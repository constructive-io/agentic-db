-- Deploy: schemas/agent_db_app_public/tables/user_settings/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/user_settings/table
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/is_active/alterations/alt0000004612


GRANT INSERT ON "agent_db_app_public".user_settings TO authenticated;


-- Deploy: schemas/agentic_db_app_public/tables/user_settings/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/user_settings/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/is_active/alterations/alt0000004506


GRANT UPDATE ON agentic_db_app_public.user_settings TO authenticated;


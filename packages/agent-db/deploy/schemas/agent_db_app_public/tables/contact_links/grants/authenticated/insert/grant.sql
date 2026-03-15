-- Deploy: schemas/agent_db_app_public/tables/contact_links/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_links/table
-- requires: schemas/agent_db_app_public/tables/attachments/columns/attachable_id/column


GRANT INSERT ON agent_db_app_public.contact_links TO authenticated;


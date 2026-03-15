-- Deploy: schemas/agent_db_app_public/tables/event_links/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_links/table
-- requires: schemas/agent_db_app_public/tables/company_links/columns/embedding/column


GRANT SELECT ON agent_db_app_public.event_links TO authenticated;


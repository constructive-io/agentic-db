-- Deploy: schemas/agent_db_app_public/tables/contact_companies/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_companies/table
-- requires: schemas/agent_db_app_public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


GRANT DELETE ON agent_db_app_public.contact_companies TO authenticated;


-- Deploy: schemas/agent_db_app_public/tables/tasks/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


GRANT DELETE ON agent_db_app_public.tasks TO authenticated;


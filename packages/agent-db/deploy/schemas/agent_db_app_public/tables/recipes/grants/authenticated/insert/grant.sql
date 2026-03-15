-- Deploy: schemas/agent_db_app_public/tables/recipes/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/notifications/columns/source_entity_type/column


GRANT INSERT ON agent_db_app_public.recipes TO authenticated;


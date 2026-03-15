-- Deploy: schemas/agent_db_app_public/tables/context_relations/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/completed_at/column


GRANT UPDATE ON agent_db_app_public.context_relations TO authenticated;


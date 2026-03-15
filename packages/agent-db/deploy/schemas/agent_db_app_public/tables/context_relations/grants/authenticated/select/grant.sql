-- Deploy: schemas/agent_db_app_public/tables/context_relations/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/completed_at/column


GRANT SELECT ON agent_db_app_public.context_relations TO authenticated;


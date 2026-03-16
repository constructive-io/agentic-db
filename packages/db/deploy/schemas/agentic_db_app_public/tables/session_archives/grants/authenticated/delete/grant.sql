-- Deploy: schemas/agentic_db_app_public/tables/session_archives/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/completed_at/column


GRANT DELETE ON "agentic_db_app_public".session_archives TO authenticated;


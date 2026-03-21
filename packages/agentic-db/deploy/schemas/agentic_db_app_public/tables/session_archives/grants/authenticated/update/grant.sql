-- Deploy: schemas/agentic_db_app_public/tables/session_archives/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/completed_at/column


GRANT UPDATE ON "agentic_db_app_public".session_archives TO authenticated;


-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/embedding/column


ALTER TABLE agent_db_app_public.sessions 
  ADD COLUMN id uuid;


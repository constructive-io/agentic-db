-- Deploy: schemas/agent_db_app_public/tables/session_archives/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/strength/column


ALTER TABLE agent_db_app_public.session_archives 
  ADD COLUMN id uuid;


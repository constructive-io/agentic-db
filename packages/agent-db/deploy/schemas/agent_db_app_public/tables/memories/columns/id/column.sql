-- Deploy: schemas/agent_db_app_public/tables/memories/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/embedding/column


ALTER TABLE agent_db_app_public.memories 
  ADD COLUMN id uuid;


-- Deploy: schemas/agent_db_app_public/tables/skills/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/embedding/column


ALTER TABLE agent_db_app_public.skills 
  ADD COLUMN entity_id uuid;


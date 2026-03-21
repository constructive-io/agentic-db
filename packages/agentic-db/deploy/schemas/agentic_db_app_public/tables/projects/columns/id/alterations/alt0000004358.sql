-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/id/alterations/alt0000004358
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/indexes/agent_spawns_status_idx


ALTER TABLE agentic_db_app_public.projects 
  ALTER COLUMN id SET NOT NULL;


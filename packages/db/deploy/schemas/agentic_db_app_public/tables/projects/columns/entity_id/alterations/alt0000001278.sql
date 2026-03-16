-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/entity_id/alterations/alt0000001278
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".projects 
  ALTER COLUMN entity_id SET NOT NULL;


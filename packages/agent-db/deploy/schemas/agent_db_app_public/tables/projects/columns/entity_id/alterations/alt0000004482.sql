-- Deploy: schemas/agent_db_app_public/tables/projects/columns/entity_id/alterations/alt0000004482
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint


ALTER TABLE "agent_db_app_public".projects 
  ALTER COLUMN entity_id SET NOT NULL;


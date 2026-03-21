-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/columns/updated_at/alterations/alt0000002238
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ALTER COLUMN updated_at SET NOT NULL;


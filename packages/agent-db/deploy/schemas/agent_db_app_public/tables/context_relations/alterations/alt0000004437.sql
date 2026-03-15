-- Deploy: schemas/agent_db_app_public/tables/context_relations/alterations/alt0000004437
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/completed_at/column


ALTER TABLE "agent_db_app_public".context_relations 
  DISABLE ROW LEVEL SECURITY;


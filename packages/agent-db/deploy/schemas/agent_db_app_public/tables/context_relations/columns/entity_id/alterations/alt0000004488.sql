-- Deploy: schemas/agent_db_app_public/tables/context_relations/columns/entity_id/alterations/alt0000004488
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/completed_at/column
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/entity_id/column


ALTER TABLE "agent_db_app_public".context_relations 
  ALTER COLUMN entity_id SET NOT NULL;


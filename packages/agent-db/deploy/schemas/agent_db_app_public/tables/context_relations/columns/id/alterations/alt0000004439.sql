-- Deploy: schemas/agent_db_app_public/tables/context_relations/columns/id/alterations/alt0000004439
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/id/column
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/completed_at/column



ALTER TABLE "agent_db_app_public".context_relations 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();


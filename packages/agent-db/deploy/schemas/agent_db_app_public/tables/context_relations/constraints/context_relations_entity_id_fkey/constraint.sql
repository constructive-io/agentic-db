-- Deploy: schemas/agent_db_app_public/tables/context_relations/constraints/context_relations_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/completed_at/column


ALTER TABLE "agent_db_app_public".context_relations 
  ADD CONSTRAINT context_relations_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;


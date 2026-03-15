-- Deploy: schemas/agent_db_app_public/tables/context_relations/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/completed_at/column


ALTER TABLE agent_db_app_public.context_relations 
  ENABLE ROW LEVEL SECURITY;


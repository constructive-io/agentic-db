-- Revert: schemas/agent_db_app_public/tables/context_relations/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".context_relations 
  DISABLE ROW LEVEL SECURITY;



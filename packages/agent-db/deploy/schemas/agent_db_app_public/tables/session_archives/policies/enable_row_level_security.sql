-- Deploy: schemas/agent_db_app_public/tables/session_archives/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/strength/column


ALTER TABLE "agent_db_app_public".session_archives 
  ENABLE ROW LEVEL SECURITY;


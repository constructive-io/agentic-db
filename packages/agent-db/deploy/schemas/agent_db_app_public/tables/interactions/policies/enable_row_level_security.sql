-- Deploy: schemas/agent_db_app_public/tables/interactions/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/embedding/column


ALTER TABLE "agent_db_app_public".interactions 
  ENABLE ROW LEVEL SECURITY;


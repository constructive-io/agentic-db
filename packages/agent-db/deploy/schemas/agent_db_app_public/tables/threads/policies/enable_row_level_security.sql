-- Deploy: schemas/agent_db_app_public/tables/threads/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/threads/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/embedding/column


ALTER TABLE agent_db_app_public.threads 
  ENABLE ROW LEVEL SECURITY;


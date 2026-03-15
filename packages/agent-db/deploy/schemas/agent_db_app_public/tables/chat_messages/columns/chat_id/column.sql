-- Deploy: schemas/agent_db_app_public/tables/chat_messages/columns/chat_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/execution_log/constraints/execution_logs_session_id_fkey/constraint


ALTER TABLE "agent_db_app_public".chat_messages 
  ADD COLUMN chat_id uuid;


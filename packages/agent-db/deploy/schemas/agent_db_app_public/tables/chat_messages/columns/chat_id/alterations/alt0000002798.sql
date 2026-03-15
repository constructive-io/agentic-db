-- Deploy: schemas/agent_db_app_public/tables/chat_messages/columns/chat_id/alterations/alt0000002798
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/chat_id/column
-- requires: schemas/agent_db_app_public/tables/execution_log/constraints/execution_logs_session_id_fkey/constraint


ALTER TABLE "agent_db_app_public".chat_messages 
  ALTER COLUMN chat_id SET NOT NULL;


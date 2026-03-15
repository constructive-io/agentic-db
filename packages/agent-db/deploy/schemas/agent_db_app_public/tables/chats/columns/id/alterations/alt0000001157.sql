-- Deploy: schemas/agent_db_app_public/tables/chats/columns/id/alterations/alt0000001157
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chats/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/id/column
-- requires: schemas/agent_db_app_public/tables/execution_log/columns/duration_ms/column


ALTER TABLE agent_db_app_public.chats 
  ALTER COLUMN id SET NOT NULL;


-- Deploy: schemas/agentic_db_app_public/tables/processes/indexes/processes_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/processes/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/chat_messages/indexes/chat_messages_thread_id_idx


CREATE INDEX processes_agent_id_idx ON agentic_db_app_public.processes USING BTREE ( agent_id );


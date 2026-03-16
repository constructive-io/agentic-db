-- Deploy: schemas/agent_db_app_public/tables/chats/constraints/chats_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chats/table
-- requires: schemas/agent_db_app_public/tables/execution_log/columns/duration_ms/column


ALTER TABLE "agent_db_app_public".chats 
  ADD CONSTRAINT chats_pkey PRIMARY KEY (id);


-- Deploy: schemas/agent_db_app_public/tables/chats/columns/entity_id/alterations/alt0000001079
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chats/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/execution_log/columns/duration_ms/column


ALTER TABLE agent_db_app_public.chats 
  ALTER COLUMN entity_id SET NOT NULL;


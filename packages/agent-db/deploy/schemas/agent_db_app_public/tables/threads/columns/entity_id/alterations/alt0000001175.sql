-- Deploy: schemas/agent_db_app_public/tables/threads/columns/entity_id/alterations/alt0000001175
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/threads/table
-- requires: schemas/agent_db_app_public/tables/threads/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/embedding/column


ALTER TABLE agent_db_app_public.threads 
  ALTER COLUMN entity_id SET NOT NULL;


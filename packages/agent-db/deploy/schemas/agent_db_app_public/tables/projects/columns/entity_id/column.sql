-- Deploy: schemas/agent_db_app_public/tables/projects/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/constraints/chat_messages_chat_id_fkey/constraint


ALTER TABLE "agent_db_app_public".projects 
  ADD COLUMN entity_id uuid;


-- Deploy: schemas/agent_db_app_public/tables/messages/columns/thread_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/updated_at/alterations/alt0000002865


ALTER TABLE "agent_db_app_public".messages 
  ADD COLUMN thread_id text;


-- Deploy: schemas/agent_db_app_public/tables/messages/indexes/messages_thread_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/thread_id/column
-- requires: schemas/agent_db_app_public/tables/messages/indexes/messages_received_at_idx


CREATE INDEX messages_thread_id_idx ON "agent_db_app_public".messages USING BTREE ( thread_id );


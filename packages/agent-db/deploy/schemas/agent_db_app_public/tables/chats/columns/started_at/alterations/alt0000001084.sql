-- Deploy: schemas/agent_db_app_public/tables/chats/columns/started_at/alterations/alt0000001084
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chats/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/title/column
-- requires: schemas/agent_db_app_public/tables/chats/columns/started_at/column



ALTER TABLE agent_db_app_public.chats 
    ALTER COLUMN started_at SET DEFAULT now();


-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/compression_count/alterations/alt0000001147
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/archived_messages/column
-- requires: schemas/agent_db_app_public/tables/sessions/columns/compression_count/column



ALTER TABLE agent_db_app_public.sessions 
    ALTER COLUMN compression_count SET DEFAULT 0;


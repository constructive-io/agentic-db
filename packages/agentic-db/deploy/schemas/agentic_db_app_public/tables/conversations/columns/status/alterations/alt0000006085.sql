-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/status/alterations/alt0000006085
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/agent_id/column



ALTER TABLE agentic_db_app_public.conversations 
    ALTER COLUMN status SET DEFAULT 'active';


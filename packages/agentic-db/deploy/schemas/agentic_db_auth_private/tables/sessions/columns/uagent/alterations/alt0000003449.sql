-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/uagent/alterations/alt0000003449
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/uagent/column



ALTER TABLE agentic_db_auth_private.sessions 
    ALTER COLUMN uagent SET DEFAULT jwt_public.current_user_agent();


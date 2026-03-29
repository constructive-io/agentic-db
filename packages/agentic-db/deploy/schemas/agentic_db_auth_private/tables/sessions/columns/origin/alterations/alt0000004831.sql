-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/origin/alterations/alt0000004831
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/origin/column



ALTER TABLE agentic_db_auth_private.sessions 
    ALTER COLUMN origin SET DEFAULT jwt_public.current_origin();


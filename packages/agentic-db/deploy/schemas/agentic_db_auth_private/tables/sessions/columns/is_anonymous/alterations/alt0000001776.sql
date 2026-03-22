-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/is_anonymous/alterations/alt0000001776
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/is_anonymous/column



ALTER TABLE agentic_db_auth_private.sessions 
    ALTER COLUMN is_anonymous SET DEFAULT false;


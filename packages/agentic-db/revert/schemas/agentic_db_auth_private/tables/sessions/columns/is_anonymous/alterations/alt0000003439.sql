-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/is_anonymous/alterations/alt0000003439




ALTER TABLE agentic_db_auth_private.sessions 
    ALTER COLUMN is_anonymous DROP DEFAULT;




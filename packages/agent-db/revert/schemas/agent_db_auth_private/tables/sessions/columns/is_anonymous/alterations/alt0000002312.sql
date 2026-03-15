-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/is_anonymous/alterations/alt0000002312




ALTER TABLE "agent_db_auth_private".sessions 
    ALTER COLUMN is_anonymous DROP DEFAULT;




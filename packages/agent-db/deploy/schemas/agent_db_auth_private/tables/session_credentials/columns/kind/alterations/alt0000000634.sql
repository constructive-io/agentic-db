-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/kind/alterations/alt0000000634
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/table
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/kind/column


ALTER TABLE agent_db_auth_private.session_credentials 
  ALTER COLUMN kind SET NOT NULL;


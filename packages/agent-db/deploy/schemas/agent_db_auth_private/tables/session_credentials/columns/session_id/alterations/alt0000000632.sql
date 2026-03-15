-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/session_id/alterations/alt0000000632
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/table
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/session_id/column


ALTER TABLE agent_db_auth_private.session_credentials 
  ALTER COLUMN session_id SET NOT NULL;


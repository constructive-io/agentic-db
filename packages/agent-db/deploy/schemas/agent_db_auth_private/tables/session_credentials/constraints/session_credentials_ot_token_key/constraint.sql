-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/constraints/session_credentials_ot_token_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/table


ALTER TABLE "agent_db_auth_private".session_credentials 
  ADD CONSTRAINT session_credentials_ot_token_key 
    UNIQUE (ot_token);


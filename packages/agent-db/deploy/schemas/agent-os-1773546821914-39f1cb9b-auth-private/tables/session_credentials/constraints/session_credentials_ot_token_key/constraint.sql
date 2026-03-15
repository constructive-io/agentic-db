-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/constraints/session_credentials_ot_token_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".session_credentials 
  ADD CONSTRAINT session_credentials_ot_token_key 
    UNIQUE (ot_token);


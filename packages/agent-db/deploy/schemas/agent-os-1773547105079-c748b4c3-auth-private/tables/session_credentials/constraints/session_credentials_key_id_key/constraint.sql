-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/constraints/session_credentials_key_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".session_credentials 
  ADD CONSTRAINT session_credentials_key_id_key 
    UNIQUE (key_id);


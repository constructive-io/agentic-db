-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/ot_token/alterations/alt0000002206
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/ot_token/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".session_credentials.ot_token IS E'One-time token for magic link or passwordless authentication flows';


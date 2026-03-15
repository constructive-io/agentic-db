-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/last_mfa_verified/alterations/alt0000002185
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/last_mfa_verified/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".sessions.last_mfa_verified IS E'Timestamp of last MFA verification for step-up authentication';


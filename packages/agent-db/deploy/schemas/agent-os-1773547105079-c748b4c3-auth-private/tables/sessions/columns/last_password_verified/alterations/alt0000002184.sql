-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/last_password_verified/alterations/alt0000002184
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/last_password_verified/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".sessions.last_password_verified IS E'Timestamp of last password re-verification for step-up authentication';


-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/last_mfa_verified/alterations/alt0000002233
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/last_mfa_verified/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".sessions.last_mfa_verified IS E'Timestamp of last MFA verification for step-up authentication';


-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/last_mfa_verified/alterations/alt0000003794
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/last_mfa_verified/column


COMMENT ON COLUMN "agent_db_auth_private".sessions.last_mfa_verified IS E'Timestamp of last MFA verification for step-up authentication';


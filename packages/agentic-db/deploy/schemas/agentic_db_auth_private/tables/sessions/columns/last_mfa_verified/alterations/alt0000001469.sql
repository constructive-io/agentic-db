-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/last_mfa_verified/alterations/alt0000001469
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/last_mfa_verified/column


COMMENT ON COLUMN "agentic_db_auth_private".sessions.last_mfa_verified IS E'Timestamp of last MFA verification for step-up authentication';


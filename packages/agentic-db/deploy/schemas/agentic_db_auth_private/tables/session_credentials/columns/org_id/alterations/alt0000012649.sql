-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/org_id/alterations/alt0000012649
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/org_id/column


COMMENT ON COLUMN agentic_db_auth_private.session_credentials.org_id IS E'Scopes this API key to a specific organization; NULL means app-level';


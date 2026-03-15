-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/name/alterations/alt0000000644
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/name/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials.name IS E'User-provided display name for this credential (e.g. My CI Key)';


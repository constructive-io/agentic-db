-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/uagent/alterations/alt0000002228
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/uagent/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".sessions.uagent IS E'User-Agent string from the client, used for strict fingerprint validation';


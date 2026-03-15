-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/uagent/alterations/alt0000000619
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/uagent/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-auth-private".sessions.uagent IS E'User-Agent string from the client, used for strict fingerprint validation';


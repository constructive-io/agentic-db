-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/origin/alterations/alt0000000615
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/origin/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-auth-private".sessions.origin IS E'The origin (protocol + host) from which the session was created, used for fingerprint validation';


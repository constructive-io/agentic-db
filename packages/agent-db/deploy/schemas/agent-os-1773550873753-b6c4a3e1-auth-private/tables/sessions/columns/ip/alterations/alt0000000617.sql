-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/ip/alterations/alt0000000617
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/ip/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-auth-private".sessions.ip IS E'IP address from which the session was created, used for strict fingerprint validation';


-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/origin/alterations/alt0000002224
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/origin/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".sessions.origin IS E'The origin (protocol + host) from which the session was created, used for fingerprint validation';


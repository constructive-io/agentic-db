-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/alterations/alt0000002212
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/table


COMMENT ON TABLE "agent-os-1773551593867-bac64076-auth-private".sessions IS E'Tracks user authentication sessions with expiration, fingerprinting, and step-up verification state';


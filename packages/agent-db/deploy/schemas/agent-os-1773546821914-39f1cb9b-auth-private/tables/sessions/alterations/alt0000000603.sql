-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/alterations/alt0000000603
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/table


COMMENT ON TABLE "agent-os-1773546821914-39f1cb9b-auth-private".sessions IS E'Tracks user authentication sessions with expiration, fingerprinting, and step-up verification state';


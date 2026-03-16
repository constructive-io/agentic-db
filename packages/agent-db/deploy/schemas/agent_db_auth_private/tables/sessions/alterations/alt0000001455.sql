-- Deploy: schemas/agent_db_auth_private/tables/sessions/alterations/alt0000001455
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table


COMMENT ON TABLE "agent_db_auth_private".sessions IS E'Tracks user authentication sessions with expiration, fingerprinting, and step-up verification state';


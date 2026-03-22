-- Deploy: schemas/agentic_db_auth_private/tables/sessions/alterations/alt0000005276
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table


COMMENT ON TABLE agentic_db_auth_private.sessions IS E'Tracks user authentication sessions with expiration, fingerprinting, and step-up verification state';


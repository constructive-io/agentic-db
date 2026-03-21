-- Revert: schemas/agentic_db_invites_public/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_invites_public REVOKE ALL ON FUNCTIONS FROM anonymous;



-- Revert: schemas/agentic_db_encrypted/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_encrypted REVOKE ALL ON FUNCTIONS FROM anonymous;



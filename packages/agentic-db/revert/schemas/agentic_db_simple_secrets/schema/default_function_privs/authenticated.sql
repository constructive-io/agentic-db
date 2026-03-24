-- Revert: schemas/agentic_db_simple_secrets/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_simple_secrets REVOKE ALL ON FUNCTIONS FROM authenticated;



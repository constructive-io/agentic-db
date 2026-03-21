-- Revert: schemas/agentic_db_profiles_public/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_profiles_public REVOKE ALL ON FUNCTIONS FROM authenticated;



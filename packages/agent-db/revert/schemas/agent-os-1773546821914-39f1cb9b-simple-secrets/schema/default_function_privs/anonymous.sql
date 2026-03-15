-- Revert: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773546821914-39f1cb9b-simple-secrets" REVOKE ALL ON FUNCTIONS FROM anonymous;



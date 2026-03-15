-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773546821914-39f1cb9b-profiles-private" REVOKE ALL ON FUNCTIONS FROM anonymous;



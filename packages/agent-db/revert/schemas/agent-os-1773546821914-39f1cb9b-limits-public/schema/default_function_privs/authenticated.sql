-- Revert: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773546821914-39f1cb9b-limits-public" REVOKE ALL ON FUNCTIONS FROM authenticated;



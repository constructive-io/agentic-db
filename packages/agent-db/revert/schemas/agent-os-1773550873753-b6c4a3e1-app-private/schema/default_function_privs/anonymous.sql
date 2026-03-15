-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773550873753-b6c4a3e1-app-private" REVOKE ALL ON FUNCTIONS FROM anonymous;



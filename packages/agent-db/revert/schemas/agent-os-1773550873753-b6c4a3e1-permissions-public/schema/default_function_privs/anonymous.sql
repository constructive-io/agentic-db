-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773550873753-b6c4a3e1-permissions-public" REVOKE ALL ON FUNCTIONS FROM anonymous;



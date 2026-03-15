-- Revert: schemas/agent-os-1773551593867-bac64076-permissions-public/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-permissions-public" REVOKE ALL ON FUNCTIONS FROM anonymous;



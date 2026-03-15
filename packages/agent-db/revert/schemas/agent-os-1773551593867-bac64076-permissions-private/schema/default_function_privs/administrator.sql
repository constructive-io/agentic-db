-- Revert: schemas/agent-os-1773551593867-bac64076-permissions-private/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-permissions-private" REVOKE ALL ON FUNCTIONS FROM administrator;



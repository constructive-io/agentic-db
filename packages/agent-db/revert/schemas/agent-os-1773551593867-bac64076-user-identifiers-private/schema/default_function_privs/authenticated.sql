-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-private/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-user-identifiers-private" REVOKE ALL ON FUNCTIONS FROM authenticated;



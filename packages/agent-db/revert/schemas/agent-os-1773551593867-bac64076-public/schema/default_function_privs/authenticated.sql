-- Revert: schemas/agent-os-1773551593867-bac64076-public/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-public" REVOKE ALL ON FUNCTIONS FROM authenticated;



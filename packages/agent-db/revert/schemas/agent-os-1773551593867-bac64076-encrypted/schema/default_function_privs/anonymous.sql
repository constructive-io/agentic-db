-- Revert: schemas/agent-os-1773551593867-bac64076-encrypted/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-encrypted" REVOKE ALL ON FUNCTIONS FROM anonymous;



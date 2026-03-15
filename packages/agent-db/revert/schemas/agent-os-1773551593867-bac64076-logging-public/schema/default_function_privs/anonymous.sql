-- Revert: schemas/agent-os-1773551593867-bac64076-logging-public/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-logging-public" REVOKE ALL ON FUNCTIONS FROM anonymous;



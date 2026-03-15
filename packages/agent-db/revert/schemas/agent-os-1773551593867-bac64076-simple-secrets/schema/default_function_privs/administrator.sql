-- Revert: schemas/agent-os-1773551593867-bac64076-simple-secrets/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-simple-secrets" REVOKE ALL ON FUNCTIONS FROM administrator;



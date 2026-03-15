-- Revert: schemas/agent-os-1773551593867-bac64076-simple-secrets/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-simple-secrets" REVOKE ALL ON TABLES FROM administrator;



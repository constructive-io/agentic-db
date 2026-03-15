-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-profiles-public" REVOKE ALL ON TABLES FROM administrator;



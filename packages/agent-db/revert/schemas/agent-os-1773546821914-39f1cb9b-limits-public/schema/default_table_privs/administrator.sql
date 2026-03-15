-- Revert: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773546821914-39f1cb9b-limits-public" REVOKE ALL ON TABLES FROM administrator;



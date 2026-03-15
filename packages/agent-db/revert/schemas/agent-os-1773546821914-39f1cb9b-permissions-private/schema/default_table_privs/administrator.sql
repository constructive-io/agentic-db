-- Revert: schemas/agent-os-1773546821914-39f1cb9b-permissions-private/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773546821914-39f1cb9b-permissions-private" REVOKE ALL ON TABLES FROM administrator;



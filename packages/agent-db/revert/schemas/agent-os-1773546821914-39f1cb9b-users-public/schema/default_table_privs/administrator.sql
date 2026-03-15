-- Revert: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773546821914-39f1cb9b-users-public" REVOKE ALL ON TABLES FROM administrator;



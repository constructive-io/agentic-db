-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773546821914-39f1cb9b-status-public" REVOKE ALL ON FUNCTIONS FROM administrator;



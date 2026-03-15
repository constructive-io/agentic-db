-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773550873753-b6c4a3e1-app-public" REVOKE ALL ON FUNCTIONS FROM administrator;



-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773550873753-b6c4a3e1-user-identifiers-public" REVOKE ALL ON FUNCTIONS FROM administrator;



-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773550873753-b6c4a3e1-logging-public" REVOKE ALL ON FUNCTIONS FROM authenticated;



-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773550873753-b6c4a3e1-logging-public" REVOKE USAGE ON SEQUENCES FROM administrator;



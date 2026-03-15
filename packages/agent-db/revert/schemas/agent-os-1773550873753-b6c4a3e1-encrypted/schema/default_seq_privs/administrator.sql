-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773550873753-b6c4a3e1-encrypted" REVOKE USAGE ON SEQUENCES FROM administrator;



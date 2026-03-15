-- Revert: schemas/agent-os-1773546821914-39f1cb9b-encrypted/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773546821914-39f1cb9b-encrypted" REVOKE USAGE ON SEQUENCES FROM administrator;



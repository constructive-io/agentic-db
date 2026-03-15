-- Revert: schemas/agent-os-1773551593867-bac64076-encrypted/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-encrypted" REVOKE USAGE ON SEQUENCES FROM administrator;



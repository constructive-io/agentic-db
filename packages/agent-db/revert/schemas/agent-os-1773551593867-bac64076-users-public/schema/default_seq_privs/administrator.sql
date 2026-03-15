-- Revert: schemas/agent-os-1773551593867-bac64076-users-public/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-users-public" REVOKE USAGE ON SEQUENCES FROM administrator;



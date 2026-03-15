-- Revert: schemas/agent-os-1773551593867-bac64076-permissions-public/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-permissions-public" REVOKE USAGE ON SEQUENCES FROM administrator;



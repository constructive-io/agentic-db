-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-private/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-memberships-private" REVOKE USAGE ON SEQUENCES FROM authenticated;



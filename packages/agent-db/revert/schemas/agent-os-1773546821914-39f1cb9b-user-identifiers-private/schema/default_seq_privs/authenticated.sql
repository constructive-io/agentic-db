-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-private/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773546821914-39f1cb9b-user-identifiers-private" REVOKE USAGE ON SEQUENCES FROM authenticated;



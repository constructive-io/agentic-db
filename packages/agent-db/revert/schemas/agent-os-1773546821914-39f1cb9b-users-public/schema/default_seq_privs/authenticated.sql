-- Revert: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773546821914-39f1cb9b-users-public" REVOKE USAGE ON SEQUENCES FROM authenticated;



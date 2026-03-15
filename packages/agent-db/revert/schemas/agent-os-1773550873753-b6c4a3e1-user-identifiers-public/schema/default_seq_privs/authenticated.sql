-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773550873753-b6c4a3e1-user-identifiers-public" REVOKE USAGE ON SEQUENCES FROM authenticated;



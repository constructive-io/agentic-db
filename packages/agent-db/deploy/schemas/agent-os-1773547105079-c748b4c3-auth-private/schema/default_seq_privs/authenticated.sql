-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema/default_seq_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773547105079-c748b4c3-auth-private" GRANT USAGE ON SEQUENCES TO authenticated;


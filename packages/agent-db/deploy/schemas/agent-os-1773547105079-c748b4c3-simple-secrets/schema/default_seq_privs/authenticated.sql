-- Deploy: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/schema/default_seq_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773547105079-c748b4c3-simple-secrets" GRANT USAGE ON SEQUENCES TO authenticated;


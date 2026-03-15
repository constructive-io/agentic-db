-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/schema/default_seq_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773547105079-c748b4c3-status-public" GRANT USAGE ON SEQUENCES TO authenticated;


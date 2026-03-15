-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema/default_seq_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773547105079-c748b4c3-memberships-public" GRANT USAGE ON SEQUENCES TO authenticated;


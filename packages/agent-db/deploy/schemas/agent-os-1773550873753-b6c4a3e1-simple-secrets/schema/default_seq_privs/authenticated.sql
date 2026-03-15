-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/schema/default_seq_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773550873753-b6c4a3e1-simple-secrets" GRANT USAGE ON SEQUENCES TO authenticated;


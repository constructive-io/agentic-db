-- Deploy: schemas/agent-os-1773551593867-bac64076-simple-secrets/schema/default_seq_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-simple-secrets" GRANT USAGE ON SEQUENCES TO authenticated;


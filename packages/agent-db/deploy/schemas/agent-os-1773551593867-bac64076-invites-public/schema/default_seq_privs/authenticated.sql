-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/schema/default_seq_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-invites-public" GRANT USAGE ON SEQUENCES TO authenticated;


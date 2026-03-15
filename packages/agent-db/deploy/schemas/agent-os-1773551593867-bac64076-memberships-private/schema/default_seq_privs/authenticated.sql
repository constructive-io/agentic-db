-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/schema/default_seq_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-memberships-private" GRANT USAGE ON SEQUENCES TO authenticated;


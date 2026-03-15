-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-private/schema/default_seq_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773546821914-39f1cb9b-status-private" GRANT USAGE ON SEQUENCES TO authenticated;


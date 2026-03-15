-- Deploy: schemas/agent-os-1773551593867-bac64076-logging-public/schema/default_function_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773551593867-bac64076-logging-public" GRANT ALL ON FUNCTIONS TO authenticated;


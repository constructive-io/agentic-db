-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/schema/default_function_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773546821914-39f1cb9b-permissions-public" GRANT ALL ON FUNCTIONS TO authenticated;


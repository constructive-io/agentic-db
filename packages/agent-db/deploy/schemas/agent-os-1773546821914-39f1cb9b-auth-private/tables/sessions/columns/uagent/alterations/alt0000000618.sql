-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/uagent/alterations/alt0000000618
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/uagent/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".sessions 
    ALTER COLUMN uagent SET DEFAULT jwt_public.current_user_agent();


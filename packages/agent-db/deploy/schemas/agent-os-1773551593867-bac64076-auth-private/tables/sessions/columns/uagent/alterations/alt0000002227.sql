-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/uagent/alterations/alt0000002227
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/uagent/column



ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
    ALTER COLUMN uagent SET DEFAULT jwt_public.current_user_agent();


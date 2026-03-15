-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/columns/actor_id/alterations/alt0000000512
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/columns/actor_id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_achievements 
    ALTER COLUMN actor_id SET DEFAULT jwt_public.current_user_id();


-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/actor_id/alterations/alt0000001789
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/actor_id/column



ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_achievements 
    ALTER COLUMN actor_id SET DEFAULT jwt_public.current_user_id();


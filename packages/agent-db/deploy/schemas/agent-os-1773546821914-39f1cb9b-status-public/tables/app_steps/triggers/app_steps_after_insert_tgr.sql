-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_steps/triggers/app_steps_after_insert_tgr
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_steps/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-private/trigger_fns/tg_upd_achv


CREATE TRIGGER app_steps_after_insert_tgr
AFTER INSERT ON "agent-os-1773546821914-39f1cb9b-status-public".app_steps
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-status-private".tg_upd_achv ( );

